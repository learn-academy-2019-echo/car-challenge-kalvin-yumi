# ----------- #

class Card   #uppercase class name.. if more than 1 word then PascalCase
    def card_type(type)  #method that takes an arg.. don't need () around type
        @type = type # createing instance var. passing in type(whatever is passed in)
    end
end

p ace = Card.new # this creates ace obj and adds the method of card_type
p ace.card_type('ace')
p ten = Card.new.card_type('ten') #chaining the methods with .new to create and set @type = 10

class Plant
    def initialize(cactus, color)
        @cactus = cactus
        @color = color
    end
    def get_plant
        "The #{@cactus} is #{@color}"
    end
end

p random_cactus = Plant.new('name', 'green') #passing in 'name' and 'green' to initialize the which will be cactus and color..
# the difference with initialize and .card_type is that you have to call card_type where as for Plant you just have to pass in the args

p random_cactus.get_plant # will call the method that is in the class and print the cactus and its color using string interpolation..


class SucculentPlant
    def initialize
        @succulent = []
    end
    def pass_info #creating this method so that we can pass to @succulent[]
        @succulent
    end
end


p new_plant = SucculentPlant.new # create new obj based on class of SucculentPlant

p new_plant.pass_info << 'cactus1' #passes in 'cactus1' which is then shoveled into the initialezed @succulent which is an empty array..

class Light
    def initialize(type, height)
        @type = type
        @height = height
        @status = 'off'
    end
    def flip_switch
        if @status == 'off'
            @status == 'on'
        else
            @status == 'off'
    end
end

p new_light - Light.new('room light', 'very tall') # create new_light based on class of Light giving it a type of 'room light' and the height is 'very tall'


new_light.flip_switch

class Lamp < Light
    def initialize (brightness)
        super('lamp', 'short') # this is calling the @type & @height in the Light class.. super is what calls the arguments from the parent ex. initialize(type) 'lamp' is now the type that was initialized in the Light class.. calls the initializer
        @brightness = brightness
    end
    def lamp_info
        p "this #{@type} has a brightness of #{@brightness} the status is #{@status} "
    end
end

new_lamp = Lamp.new('dim')

new_lamp.flip_switch #this can be called because of the inheritance..


class Spotlight < Light
    def initialize(color, brightness)
        super('spotlight')
        @color = color
        @brightness = brightness
    end
    def spotlight_info
        "the #{@type} is #{@brightness} and is #{@status} and has a color of #{@color}"
    end
end

new_spotlight = Spotlight.new('blue', 'very bright') # this new_spotlight obj still has the already set super() of the type and height because they are hard coded into the lamp class












# ------------ #
