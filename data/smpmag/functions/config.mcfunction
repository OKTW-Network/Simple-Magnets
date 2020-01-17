############################################
# General                                  #
############################################

# Allow version prompt print out
# 0 = don't print anything, 1 = only print while version changed, 2 = always print version when /reload
# integer, default: 2
scoreboard players set #smpmag_print_version Config 2

# Allow module init prompt print out
# boolean, default: 0
scoreboard players set #smpmag_print_init Config 0

# Allow config prompt print out
# boolean, default: 0
scoreboard players set #smpmag_print_config Config 0


############################################
# Magnet                                   #
############################################

# Enable magnets
# boolean, default: 1
scoreboard players set #magnet Config 1

# Enable item magnet
# boolean, default: 1
scoreboard players set #magnet_item Config 1

# Enable exp orb magnet
# boolean, default: 1
scoreboard players set #magnet_exp Config 1


############# DO NOT MODIFY #############

execute if score #smpmag_print_config Config matches 1 run tellraw @a ["",{"text":"[Simple Magnets]: ","color":"yellow","bold":true},{"text":"Config: "},{"text":"Settings loaded!"}]
