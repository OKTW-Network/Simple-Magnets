execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:amethyst_shard",Count:4b},PickupDelay:0s}] if data entity @s Thrower run tag @s add smpmag.recipe.dropped.magnet_exp-mk2.material_1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond",Count:2b},PickupDelay:0s}] if data entity @s Thrower run tag @s add smpmag.recipe.dropped.magnet_exp-mk2.material_2
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomData:{smpmag:{id:"magnet",tag:{type:2b,mark:1}}}},Count:1b},PickupDelay:0s}] if data entity @s Thrower run tag @s add smpmag.recipe.dropped.magnet_exp-mk2.material_3

scoreboard players set @e[type=minecraft:item,tag=smpmag.recipe.dropped.magnet_exp-mk2.material_1] sucDropRcp 0
execute as @e[type=minecraft:item,tag=smpmag.recipe.dropped.magnet_exp-mk2.material_1] at @s if entity @e[type=minecraft:item,tag=smpmag.recipe.dropped.magnet_exp-mk2.material_2,distance=..0.5] if entity @e[type=minecraft:item,tag=smpmag.recipe.dropped.magnet_exp-mk2.material_3,distance=..0.5] run scoreboard players set @s sucDropRcp 1
execute as @e[type=minecraft:item,tag=smpmag.recipe.dropped.magnet_exp-mk2.material_1,scores={sucDropRcp=1}] at @s run playsound minecraft:entity.zombie_villager.converted block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item,tag=smpmag.recipe.dropped.magnet_exp-mk2.material_1,scores={sucDropRcp=1}] at @s run function smpmag:tool/summon/magnet_exp-mk2
execute as @e[type=minecraft:item,tag=smpmag.recipe.dropped.magnet_exp-mk2.material_1,scores={sucDropRcp=1}] at @s run kill @e[type=minecraft:item,tag=smpmag.recipe.dropped.magnet_exp-mk2.material_2,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=smpmag.recipe.dropped.magnet_exp-mk2.material_1,scores={sucDropRcp=1}] at @s run kill @e[type=minecraft:item,tag=smpmag.recipe.dropped.magnet_exp-mk2.material_3,distance=..1,sort=nearest,limit=1]
execute as @e[type=minecraft:item,tag=smpmag.recipe.dropped.magnet_exp-mk2.material_1,scores={sucDropRcp=1}] run kill @s

tag @e[tag=smpmag.recipe.dropped.magnet_exp-mk2.material_1] remove smpmag.recipe.dropped.magnet_exp-mk2.material_1
tag @e[tag=smpmag.recipe.dropped.magnet_exp-mk2.material_2] remove smpmag.recipe.dropped.magnet_exp-mk2.material_2
tag @e[tag=smpmag.recipe.dropped.magnet_exp-mk2.material_3] remove smpmag.recipe.dropped.magnet_exp-mk2.material_3
