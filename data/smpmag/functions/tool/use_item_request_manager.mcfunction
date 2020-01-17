# item
execute store success score #calculation_temp1 numeric if entity @s[predicate=minecraft:sneaking,predicate=smpmag:tool/hand_main-item_magnet,predicate=smpmag:hand_main-mk1,predicate=smpmag:hand_main-status0]
execute if score #calculation_temp1 numeric matches 1 run function smpmag:tool/replace-hand-main/item_magnet-mk1-status1
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatus1
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetStatus0
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatusChanged
execute store success score #calculation_temp1 numeric if entity @s[predicate=minecraft:sneaking,predicate=smpmag:tool/hand_main-item_magnet,predicate=smpmag:hand_main-mk1,predicate=smpmag:hand_main-status1,tag=!MagnetStatusChanged]
execute if score #calculation_temp1 numeric matches 1 run function smpmag:tool/replace-hand-main/item_magnet-mk1-status0
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatus0
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetStatus1
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatusChanged
execute store success score #calculation_temp1 numeric if entity @s[predicate=minecraft:sneaking,predicate=smpmag:tool/hand_main-item_magnet,predicate=smpmag:hand_main-mk2,predicate=smpmag:hand_main-status0,tag=!MagnetStatusChanged]
execute if score #calculation_temp1 numeric matches 1 run function smpmag:tool/replace-hand-main/item_magnet-mk2-status1
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatus1
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetStatus0
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatusChanged
execute store success score #calculation_temp1 numeric if entity @s[predicate=minecraft:sneaking,predicate=smpmag:tool/hand_main-item_magnet,predicate=smpmag:hand_main-mk2,predicate=smpmag:hand_main-status1,tag=!MagnetStatusChanged]
execute if score #calculation_temp1 numeric matches 1 run function smpmag:tool/replace-hand-main/item_magnet-mk2-status0
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatus0
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetStatus1
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatusChanged
execute if entity @s[tag=MagnetStatusChanged] run function smpmag:hud/item_magnet
execute if entity @s[tag=MagnetStatusChanged,tag=MagnetStatus0] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5 0
execute if entity @s[tag=MagnetStatusChanged,tag=MagnetStatus1] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5 2
execute if entity @s[tag=MagnetStatusChanged] run tag @s remove MagnetStatusChanged

execute store success score #calculation_temp1 numeric if entity @s[predicate=!minecraft:sneaking,predicate=smpmag:tool/hand_main-item_magnet,predicate=smpmag:hand_main-mk2,predicate=smpmag:hand_main-status1,tag=MagnetRange3]
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetRange1
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetRange2
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetRange3
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetRangeChanged
execute store success score #calculation_temp1 numeric if entity @s[predicate=!minecraft:sneaking,predicate=smpmag:tool/hand_main-item_magnet,predicate=smpmag:hand_main-mk2,predicate=smpmag:hand_main-status1,tag=MagnetRange1,tag=!MagnetRangeChanged]
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetRange2
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetRange1
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetRange3
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetRangeChanged
execute store success score #calculation_temp1 numeric if entity @s[predicate=!minecraft:sneaking,predicate=smpmag:tool/hand_main-item_magnet,predicate=smpmag:hand_main-mk2,predicate=smpmag:hand_main-status1,tag=MagnetRange2,tag=!MagnetRangeChanged]
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetRange3
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetRange1
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetRange2
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetRangeChanged
execute if entity @s[tag=MagnetRangeChanged] run function smpmag:hud/item_magnet
execute if entity @s[tag=MagnetRangeChanged] at @s run playsound block.note_block.hat player @s ~ ~ ~ 0.5 1
execute if entity @s[tag=MagnetRangeChanged] run tag @s remove MagnetRangeChanged

# exp
execute store success score #calculation_temp1 numeric if entity @s[predicate=minecraft:sneaking,predicate=smpmag:tool/hand_main-exp_magnet,predicate=smpmag:hand_main-mk1,predicate=smpmag:hand_main-status0]
execute if score #calculation_temp1 numeric matches 1 run function smpmag:tool/replace-hand-main/exp_magnet-mk1-status1
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatus1
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetStatus0
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatusChanged
execute store success score #calculation_temp1 numeric if entity @s[predicate=minecraft:sneaking,predicate=smpmag:tool/hand_main-exp_magnet,predicate=smpmag:hand_main-mk1,predicate=smpmag:hand_main-status1,tag=!MagnetStatusChanged]
execute if score #calculation_temp1 numeric matches 1 run function smpmag:tool/replace-hand-main/exp_magnet-mk1-status0
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatus0
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetStatus1
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatusChanged
execute store success score #calculation_temp1 numeric if entity @s[predicate=minecraft:sneaking,predicate=smpmag:tool/hand_main-exp_magnet,predicate=smpmag:hand_main-mk2,predicate=smpmag:hand_main-status0,tag=!MagnetStatusChanged]
execute if score #calculation_temp1 numeric matches 1 run function smpmag:tool/replace-hand-main/exp_magnet-mk2-status1
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatus1
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetStatus0
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatusChanged
execute store success score #calculation_temp1 numeric if entity @s[predicate=minecraft:sneaking,predicate=smpmag:tool/hand_main-exp_magnet,predicate=smpmag:hand_main-mk2,predicate=smpmag:hand_main-status1,tag=!MagnetStatusChanged]
execute if score #calculation_temp1 numeric matches 1 run function smpmag:tool/replace-hand-main/exp_magnet-mk2-status0
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatus0
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetStatus1
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetStatusChanged
execute if entity @s[tag=MagnetStatusChanged] run function smpmag:hud/exp_magnet
execute if entity @s[tag=MagnetStatusChanged,tag=MagnetStatus0] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5 0
execute if entity @s[tag=MagnetStatusChanged,tag=MagnetStatus1] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5 2
execute if entity @s[tag=MagnetStatusChanged] run tag @s remove MagnetStatusChanged

execute store success score #calculation_temp1 numeric if entity @s[predicate=!minecraft:sneaking,predicate=smpmag:tool/hand_main-exp_magnet,predicate=smpmag:hand_main-mk2,predicate=smpmag:hand_main-status1,tag=MagnetRange3]
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetRange1
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetRange2
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetRange3
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetRangeChanged
execute store success score #calculation_temp1 numeric if entity @s[predicate=!minecraft:sneaking,predicate=smpmag:tool/hand_main-exp_magnet,predicate=smpmag:hand_main-mk2,predicate=smpmag:hand_main-status1,tag=MagnetRange1,tag=!MagnetRangeChanged]
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetRange2
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetRange1
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetRange3
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetRangeChanged
execute store success score #calculation_temp1 numeric if entity @s[predicate=!minecraft:sneaking,predicate=smpmag:tool/hand_main-exp_magnet,predicate=smpmag:hand_main-mk2,predicate=smpmag:hand_main-status1,tag=MagnetRange2,tag=!MagnetRangeChanged]
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetRange3
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetRange1
execute if score #calculation_temp1 numeric matches 1 run tag @s remove MagnetRange2
execute if score #calculation_temp1 numeric matches 1 run tag @s add MagnetRangeChanged
execute if entity @s[tag=MagnetRangeChanged] run function smpmag:hud/exp_magnet
execute if entity @s[tag=MagnetRangeChanged] at @s run playsound block.note_block.hat player @s ~ ~ ~ 0.5 1
execute if entity @s[tag=MagnetRangeChanged] run tag @s remove MagnetRangeChanged
