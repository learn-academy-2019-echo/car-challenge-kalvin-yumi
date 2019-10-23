# Story: As a programmer, I can make a vehicle. Hint: Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.

class Vehicle
    def initialize()
    end
end

my_vehicle = Vehicle.new

#
# Story: As a programmer, I can make a car. Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.
#

class Car
    def initialize(type, year)
        @type = type
        @year = year
        @wheels = 4
        @light = 'off'
        @signal = 'off'
        @speed = 0
    end
    def change_wheels
        @wheels
    end
    def light_switch
        if @light == 'off'
            @light = 'on'
        else
            @light = 'off'
        end
    end
    def signal_left
        if @signal == 'off'
            @signal = 'left'
        elsif @signal == 'right'
            @signal = 'left'
        else
            @signal = 'off'
        end
    end
    def signal_right
        if @signal == 'off'
            @signal = 'right'
        elsif @signal == 'left'
            @signal = 'right'
        else
            @signal = 'off'
        end
    end
    def acceleration
        if @type == 'Tesla'
            @speed += 10
        elsif @type == 'Honda'
            @speed += 2
        else
            @speed += 7
        end
    end
    def braking
        if @type == 'Tesla'
            @speed -= 7
        elsif @type == 'Honda'
            @speed -= 1.25
        else
            @speed -= 5
        end
    end
    def get_info
        "this #{@year} #{@type} has #{@wheels} wheels and its lights are #{@light} its going #{@speed.to_s}kph signal is #{@signal}"
    end
    def year
        @year
    end
    def type
        @type
    end
end

# my_car = Car.new


# Story: As a programmer, I can tell how many wheels a car has; default is four. Hint: initialize the car to have four wheels, then create a method to return the number of wheels.
#

class Tesla < Car
end


# Story: As a programmer, I can make a Tesla car. Hint: Create an variable called my_tesla which is of class Tesla which inherits from class Car.
collection = []

my_tesla = Car.new('Tesla', 2019)
my_tesla2 = Car.new('Tesla', 2000)
# Story: As a programmer, I can make a Honda car.
my_honda = Car.new('Honda', 2000)
my_honda2 = Car.new('Honda', 2001)
# Story: As a programmer, I can make a Toyota car.
my_toyota = Car.new('Toyota', 2001)
my_toyota2 = Car.new('Toyota', 2002)



collection << my_honda << my_tesla << my_tesla2 << my_honda2 << my_toyota << my_toyota2
#
# years = collection.map{|el|
#     el.instance_variable_get(:@year)
# }.sort

# def sort_type(arr)
#     arr.sort!{ |a,b| a.type<=>b.type}
# end
#
# def sort_year(arr)
#     arr.sort!{ |a,b| a.year<=>b.year}
# end
#
# sort_type(collection)
# sort_year(collection)


def sort_type(arr)
    arr.sort_by{ |a| [a.type, a.year] }
end

p sort_type(collection)





# p my_toyota.light_switch
# p my_toyota.light_switch
# p my_toyota.light_switch
# p my_toyota.signal_left
# p my_toyota.signal_right
# p my_toyota.signal_right
# p my_tesla.acceleration
# p my_tesla.acceleration
# p my_tesla
# p my_honda.acceleration
# p my_toyota.acceleration
# p my_honda
# p my_toyota
# p my_tesla.braking
# p my_tesla
# p my_honda.braking
# p my_toyota.braking
# p my_honda
# p my_toyota
#
# p my_honda.get_info
# p my_toyota.get_info
# p my_tesla.get_info

# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change. Hint: Make model year part of the initialization.

# Story: As a programmer, I can turn on and off the lights on a given Vehicle. Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?
#
# Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.
#
# You should be able to test the car now:
# vehicle = Vehicle.new(...)
# vehicle.lights_on # should return false because they start false
# vehicle.lights_on = true # this should change the lights to true
# vehicle.lights_on # should now return true
# vehicle.lights_on = false # this should change the lights to false
# vehicle.lights_on? # should return false
# Story: As a programmer, I can signal left and right. Turn signals starts off.
#
# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
#
# Story: As a programmer, I can speed my Teslas up by 10 per acceleration.
#
# Story: As a programmer, I can slow my Teslas down by 7 per braking.
#
# Story: As a programmer, I can speed my Hondas up by 2 per acceleration.
#
# Story: As a programmer, I can slow my Hondas down by 1.25 per braking.
#
# Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.
#
# Story: As a programmer, I can slow my Toyotas down by 5 per braking.
#
# Story: As a programmer, I can call upon a car to tell me all it's information. Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.
#
# Story: As a programmer, I can keep a collection of two of each kind of vehicle, all from different years. Hint: Create two of each vehicles, all from different model years, and put them into an Array.
#
# Story: As a programmer, I can sort my collection of cars based on model year.
#
# Story: As a programmer, I can sort my collection of cars based on model. Hint: Sort based on class name.
#
# Story: As a programmer, I can sort my collection of cars based on model and then year. Hint: Find out how the spaceship operator can help you with an array.
