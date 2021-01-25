execute as @e[type=minecraft:item,tag=dropRcpItemMagMk2_1,nbt={Item:{id:"minecraft:blaze_rod"}},nbt=!{Item:{Count:4b}}] run tag @s remove dropRcpItemMagMk2_1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:blaze_rod",Count:4b}}] run tag @s add dropRcpItemMagMk2_1

execute as @e[type=minecraft:item,tag=dropRcpItemMagMk2_2,nbt={Item:{id:"minecraft:diamond"}},nbt=!{Item:{Count:2b}}] run tag @s remove dropRcpItemMagMk2_2
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond",Count:2b}}] run tag @s add dropRcpItemMagMk2_2

execute as @e[type=minecraft:item,tag=dropRcpItemMagMk2_3,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{itemMagnet:1,mk:1}}},nbt=!{Item:{Count:1b}}] run tag @s remove dropRcpItemMagMk2_3
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{itemMagnet:1,mk:1},Count:1b}}] run tag @s add dropRcpItemMagMk2_3

execute as @e[type=minecraft:item,tag=dropRcpItemMagMk2_3] at @s store success score #1 calcu_temp if entity @e[type=minecraft:item,tag=dropRcpItemMagMk2_1,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpItemMagMk2_3] at @s if score #1 calcu_temp matches 1 store success score #1 calcu_temp run execute if entity @e[type=minecraft:item,tag=dropRcpItemMagMk2_2,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpItemMagMk2_3] if score #1 calcu_temp matches 1 run scoreboard players set #1 calcu_temp -1
execute as @e[type=minecraft:item,tag=dropRcpItemMagMk2_3] at @s if score #1 calcu_temp matches -1 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item,tag=dropRcpItemMagMk2_3] at @s if score #1 calcu_temp matches -1 run function smpmag:tool/summon/magnet_item-mk2
execute as @e[type=minecraft:item,tag=dropRcpItemMagMk2_3] at @s if score #1 calcu_temp matches -1 run kill @e[type=minecraft:item,tag=dropRcpItemMagMk2_1,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpItemMagMk2_3] at @s if score #1 calcu_temp matches -1 run kill @e[type=minecraft:item,tag=dropRcpItemMagMk2_2,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpItemMagMk2_3] if score #1 calcu_temp matches -1 run kill @s
