execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_1,nbt={Item:{id:"minecraft:blaze_rod"}},nbt=!{Item:{Count:4b}}] run tag @s remove dropRcpUniMagMk2-2_1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:blaze_rod",Count:4b}}] run tag @s add dropRcpUniMagMk2-2_1

execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_2,nbt={Item:{id:"minecraft:ender_pearl"}},nbt=!{Item:{Count:4b}}] run tag @s remove dropRcpUniMagMk2-2_2
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_pearl",Count:4b}}] run tag @s add dropRcpUniMagMk2-2_2

execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_3,nbt={Item:{id:"minecraft:diamond"}},nbt=!{Item:{Count:4b}}] run tag @s remove dropRcpUniMagMk2-2_3
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond",Count:4b}}] run tag @s add dropRcpUniMagMk2-2_3

execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_4,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{UniMagnet:1,mk:1}}},nbt=!{Item:{Count:1b}}] run tag @s remove dropRcpUniMagMk2-2_4
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{UniMagnet:1,mk:1},Count:1b}}] run tag @s add dropRcpUniMagMk2-2_4

execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_5,nbt={Item:{id:"minecraft:diamond_block"}},nbt=!{Item:{Count:1b}}] run tag @s remove dropRcpUniMagMk2-2_5
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] run tag @s add dropRcpUniMagMk2-2_5

execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_5] at @s store success score #calculation_temp1 numeric if entity @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_1,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_5] at @s if score #calculation_temp1 numeric matches 1 store success score #calculation_temp1 numeric if entity @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_2,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_5] at @s if score #calculation_temp1 numeric matches 1 store success score #calculation_temp1 numeric if entity @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_3,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_5] at @s if score #calculation_temp1 numeric matches 1 store success score #calculation_temp1 numeric if entity @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_4,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_5] if score #calculation_temp1 numeric matches 1 run scoreboard players set #calculation_temp1 numeric -1
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_5] at @s if score #calculation_temp1 numeric matches -1 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_5] at @s if score #calculation_temp1 numeric matches -1 run function smpmag:tool/summon/magnet_uni-mk2
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_5] at @s if score #calculation_temp1 numeric matches -1 run kill @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_1,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_5] at @s if score #calculation_temp1 numeric matches -1 run kill @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_2,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_5] at @s if score #calculation_temp1 numeric matches -1 run kill @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_3,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_5] at @s if score #calculation_temp1 numeric matches -1 run kill @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_4,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-2_5] if score #calculation_temp1 numeric matches -1 run kill @s
