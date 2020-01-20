execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-1_1,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{itemMagnet:1,mk:2}}},nbt=!{Item:{Count:1b}}] run tag @s remove dropRcpUniMagMk2-1_1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{itemMagnet:1,mk:2},Count:1b}}] run tag @s add dropRcpUniMagMk2-1_1

execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-1_2,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{expMagnet:1,mk:2}}},nbt=!{Item:{Count:1b}}] run tag @s remove dropRcpUniMagMk2-1_2
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{expMagnet:1,mk:2},Count:1b}}] run tag @s add dropRcpUniMagMk2-1_2

execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-1_3,nbt={Item:{id:"minecraft:diamond_block"}},nbt=!{Item:{Count:1b}}] run tag @s remove dropRcpUniMagMk2-1_3
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] run tag @s add dropRcpUniMagMk2-1_3

execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-1_3] at @s store success score #calculation_temp1 numeric if entity @e[type=minecraft:item,tag=dropRcpUniMagMk2-1_1,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-1_3] at @s if score #calculation_temp1 numeric matches 1 store success score #calculation_temp1 numeric if entity @e[type=minecraft:item,tag=dropRcpUniMagMk2-1_2,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-1_3] if score #calculation_temp1 numeric matches 1 run scoreboard players set #calculation_temp1 numeric -1
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-1_3] at @s if score #calculation_temp1 numeric matches -1 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-1_3] at @s if score #calculation_temp1 numeric matches -1 run function smpmag:tool/summon/magnet_uni-mk2
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-1_3] at @s if score #calculation_temp1 numeric matches -1 run kill @e[type=minecraft:item,tag=dropRcpUniMagMk2-1_1,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-1_3] at @s if score #calculation_temp1 numeric matches -1 run kill @e[type=minecraft:item,tag=dropRcpUniMagMk2-1_2,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk2-1_3] if score #calculation_temp1 numeric matches -1 run kill @s
