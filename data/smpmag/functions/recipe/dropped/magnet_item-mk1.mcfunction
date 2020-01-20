execute as @e[type=minecraft:item,tag=dropRcpItemMagMk1_1,nbt={Item:{id:"minecraft:iron_ingot"}},nbt=!{Item:{Count:4b}}] run tag @s remove dropRcpItemMagMk1_1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot",Count:4b}}] run tag @s add dropRcpItemMagMk1_1

execute as @e[type=minecraft:item,tag=dropRcpItemMagMk1_2,nbt={Item:{id:"minecraft:gold_ingot"}},nbt=!{Item:{Count:2b}}] run tag @s remove dropRcpItemMagMk1_2
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_ingot",Count:2b}}] run tag @s add dropRcpItemMagMk1_2

execute as @e[type=minecraft:item,tag=dropRcpItemMagMk1_2] at @s store success score #calculation_temp1 numeric if entity @e[type=minecraft:item,tag=dropRcpItemMagMk1_1,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpItemMagMk1_2] if score #calculation_temp1 numeric matches 1 run scoreboard players set #calculation_temp1 numeric -1
execute as @e[type=minecraft:item,tag=dropRcpItemMagMk1_2] at @s if score #calculation_temp1 numeric matches -1 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item,tag=dropRcpItemMagMk1_2] at @s if score #calculation_temp1 numeric matches -1 run function smpmag:tool/summon/magnet_item-mk1
execute as @e[type=minecraft:item,tag=dropRcpItemMagMk1_2] at @s if score #calculation_temp1 numeric matches -1 run kill @e[type=minecraft:item,tag=dropRcpItemMagMk1_1,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpItemMagMk1_2] if score #calculation_temp1 numeric matches -1 run kill @s
