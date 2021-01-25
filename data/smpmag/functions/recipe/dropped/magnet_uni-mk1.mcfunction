execute as @e[type=minecraft:item,tag=dropRcpUniMagMk1_1,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{itemMagnet:1,mk:1}}},nbt=!{Item:{Count:1b}}] run tag @s remove dropRcpUniMagMk1_1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{itemMagnet:1,mk:1},Count:1b}}] run tag @s add dropRcpUniMagMk1_1

execute as @e[type=minecraft:item,tag=dropRcpUniMagMk1_2,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{expMagnet:1,mk:1}}},nbt=!{Item:{Count:1b}}] run tag @s remove dropRcpUniMagMk1_2
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{expMagnet:1,mk:1},Count:1b}}] run tag @s add dropRcpUniMagMk1_2

execute as @e[type=minecraft:item,tag=dropRcpUniMagMk1_3,nbt={Item:{id:"minecraft:gold_block"}},nbt=!{Item:{Count:1b}}] run tag @s remove dropRcpUniMagMk1_3
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_block",Count:1b}}] run tag @s add dropRcpUniMagMk1_3

execute as @e[type=minecraft:item,tag=dropRcpUniMagMk1_3] at @s store success score #1 calcu_temp if entity @e[type=minecraft:item,tag=dropRcpUniMagMk1_1,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk1_3] at @s if score #1 calcu_temp matches 1 store success score #1 calcu_temp if entity @e[type=minecraft:item,tag=dropRcpUniMagMk1_2,distance=..0.5]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk1_3] if score #1 calcu_temp matches 1 run scoreboard players set #1 calcu_temp -1
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk1_3] at @s if score #1 calcu_temp matches -1 run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk1_3] at @s if score #1 calcu_temp matches -1 run function smpmag:tool/summon/magnet_uni-mk1
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk1_3] at @s if score #1 calcu_temp matches -1 run kill @e[type=minecraft:item,tag=dropRcpUniMagMk1_1,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk1_3] at @s if score #1 calcu_temp matches -1 run kill @e[type=minecraft:item,tag=dropRcpUniMagMk1_2,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=dropRcpUniMagMk1_3] if score #1 calcu_temp matches -1 run kill @s
