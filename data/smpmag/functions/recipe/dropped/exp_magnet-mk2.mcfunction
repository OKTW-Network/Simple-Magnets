execute as @e[type=minecraft:item,tag=dropRcpExpMagMk2_1,nbt={Item:{id:"minecraft:ender_pearl"}},nbt=!{Item:{Count:4b}}] run tag @s remove dropRcpExpMagMk2_1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_pearl",Count:4b}}] run tag @s add dropRcpExpMagMk2_1

execute as @e[type=minecraft:item,tag=dropRcpExpMagMk2_2,nbt={Item:{id:"minecraft:diamond"}},nbt=!{Item:{Count:2b}}] run tag @s remove dropRcpExpMagMk2_2
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond",Count:2b}}] run tag @s add dropRcpExpMagMk2_2

execute as @e[type=minecraft:item,tag=dropRcpExpMagMk2_3,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{expMagnet:1,mk:1}}},nbt=!{Item:{Count:1b}}] run tag @s remove dropRcpExpMagMk2_3
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{expMagnet:1,mk:1},Count:1b}}] run tag @s add dropRcpExpMagMk2_3

execute as @e[type=minecraft:item,tag=dropRcpExpMagMk2_3] at @s store success score #calculation_temp1 numeric if entity @e[type=minecraft:item,tag=dropRcpExpMagMk2_1,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpExpMagMk2_3] at @s if score #calculation_temp1 numeric matches 1 store success score #calculation_temp1 numeric run execute if entity @e[type=minecraft:item,tag=dropRcpExpMagMk2_2,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpExpMagMk2_3] if score #calculation_temp1 numeric matches 1 run scoreboard players set #calculation_temp1 numeric -1
execute as @e[type=minecraft:item,tag=dropRcpExpMagMk2_3] at @s if score #calculation_temp1 numeric matches -1 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item,tag=dropRcpExpMagMk2_3] at @s if score #calculation_temp1 numeric matches -1 run function smpmag:tool/summon/exp_magnet-mk2
execute as @e[type=minecraft:item,tag=dropRcpExpMagMk2_3] at @s if score #calculation_temp1 numeric matches -1 run kill @e[type=minecraft:item,tag=dropRcpExpMagMk2_1,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpExpMagMk2_3] at @s if score #calculation_temp1 numeric matches -1 run kill @e[type=minecraft:item,tag=dropRcpExpMagMk2_2,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpExpMagMk2_3] if score #calculation_temp1 numeric matches -1 run kill @s
