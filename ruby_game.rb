
def path1
    puts 'you chose easy mode.. Would you like to leave in the (1)morning or at (2)night?'
    option = gets().to_i

    if option == 1
        prompt_distance
    elsif
        prompt_battery_food
    end
end

path2_inputs = [];
inputs = {'question1' => nil, q2: 'lskdfl;skjdlsdjf' }

def path2
    puts 'question test (1) or (2)'
    option = gets().to_i
    puts 'question2 (1) or (2) '
    option2 = gets().to_i

    path2_inputs << option
    path2_inputs << option2
end

path2
p path2_inputs


def prompt_distance
    puts 'You left at 6:00am.. you are feeling a bit tired because you didnt get enough sleep. Soo.. would you like to walk (1)5 miles today? or (2)15 miles today? choose wisely..!!'
    option = gets().to_i
    if option == 1
        path1_3
    else
        path1_4_dead
    end
end


def prompt_battery_food
    puts 'You left at 6:00pm.. You feel great but its a bit hard to see where youre going.. Would you like to grab some (1)extra food on the way or (2)some extra batteries'
    option = gets().to_i
    if option == 1
        path1_5_dead
    else
        path1_6
    end
end

def path1_3
    puts 'Youve walked 5 miles today! BUT looks like youre running low on food.. (1)Would you like to go hunting while its still bright or (2)Start looking for some shelter?  '
    option = gets().to_i
    if option == 1
        path1_7
    else
        path1_8
    end
end

def path1_7
    puts 'Looks like while hunting you fell off the mountain.. sorry youre dead'
    game
end

def path1_8
    puts 'You found some shelter good job! but now you have no way to start a fire to keep yourself warm.. (1)Would you like to go back out and find fire wood OR (2)Would you like to stay in and try to get some rest'
    option = gets().to_i

    if option == 1
        path1_13
    else
        path1_14
    end
end

def path1_13
    puts 'BAD idea looks like it got too dark and you couldnt find your way back to shelter.. You died'
    game
end

def path1_14
    puts 'Great Choice!! You got some great rest despite the cold and now you have the energy to get to the top of the mountain..YOU WIN!!'
    game
end

def path1_4_dead
    puts 'Youve walked 15 miles today!! BUT looks like youre running low on food, its getting dark, and you have almost no energy left.. (1)Would you like to call it a night and sleep were you are? (2) Go hunting? '
    option = gets().to_i

    if option == 1
        puts 'looks like there was a wild fire... sorry ur dead'
        game
    else
        puts 'you got hunted.. dead'
        game
    end
end

def path1_5_dead
    puts 'After walking for a bit.. Looks like you ran into a bear!!(maybe shouldnt have got that extra food tho) (1)Would you like to fight the bear with your bare hands OR (2)run..'
    option = gets().to_i

    if option == 1
        puts 'DANNNG YOU KILLED BEAR... but it was the cub and momma bear was not happy.. so YOU DEAD..'
        game
    else
        puts 'havent you ever heard.. dont run from a bear.. they faster than you.. you DEAD'
        game
    end
end

def path1_6

    puts 'After walking for a bit.. you realize all the food that you thought you brought is actually at the bottom of the mountain.. (1)Would you like to hunt with your axe OR (2)Would you like to set some traps..'
    option = gets().to_i

    if option == 1
        path1_9_axe_dead
    else
        path1_10_traps
    end
end

def path1_9_axe_dead
    puts 'While on your hunt.. You ran into a tree and thought you could axe it.. bad idea.. that tree fell right on top of you and you DIED'
    game
end

def path1_10_traps
    puts 'After a few hours all your traps worked!!..now you have food an batteries. Looks like the area you are in gets pretty cold at night.. (1)Would you like to walk another 3 miles to a safer area? OR (2)Would you like to find shelter near where you are? '
    option = gets().to_i
    if option == 1
        path1_11_dead
    else
        path1_12
    end
end


def path1_11_dead
    puts 'Nice you found the safe area.. but looks like that safe area is right back at the bottom of the mountain.. looks like youll have to start again..'
    game
end

def path1_12
    puts 'Good choice looks like you found a great cave to stay in for the night..Now that its morning you have all the energy to get to the top YAYYY you did it!!! You made it to the top!!'
    game
end


def game
    puts 'press 1 for adventure.. press 2 for better adventure'
    option = gets().to_i
    if option == 1
        path1
    elsif condition
        path2
    end
end

game















# You left at 6:00am.. you are feeling a bit tired because you didnt get enough sleep. Soo.. would you like to walk (1)5 miles today? or (2)15 miles today? choose wisely..!!'
#
#
# 'You left at 6:00pm.. You feel great but its a bit hard to see where youre going.. Would you like to grab some (1)extra food on the way or (2)some extra batteries'







#
#
#
# option = gets().to_i
# if option == 1
#     puts 'you chose easy mode.. Would you like to leave in the (1)morning or at (2)night?'
#     option = gets().to_i
#     if option == 1
#         p 'morning'
#     else
#         p' night'
#     end
#
# elsif
#     puts 'you chose HARD mode.. Would you like to leave in the (1)morning or at
#     (2)night?'
#     option = gets().to_i
#         if option == 1
#             puts 'You left at 6:00am.. you are feeling a bit tired because you didnt get enough sleep. Soo.. would you like to walk (1)5 miles today? or (2)15 miles today? choose wisely..!!'
#             option = gets().to_i
#                 if condition
#
#                 end
#         else
#             puts 'You left at 6:00pm.. You feel great but its a bit hard to see where youre going.. Would you like to grab some (1)extra food on the way or (2)some extra batteries'
#             option = get().to_i
#                 if condition
#
#                 end
#         end
# end
