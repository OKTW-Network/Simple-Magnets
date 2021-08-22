tag @s add ThisMagnetUser

execute if entity @s[predicate=smpmag:tool/magnet/have-active_mk1_item,predicate=!smpmag:tool/magnet/have-active_mk2_item] run tag @e[distance=..3,type=minecraft:item,predicate=smpmag:entity/item-can_be_attracted_by_magnet] add smpmag.magnetCanAttract.item
execute if entity @s[predicate=smpmag:tool/magnet/have-active_mk2_item] run tag @e[distance=..7,type=minecraft:item,predicate=smpmag:entity/item-can_be_attracted_by_magnet] add smpmag.magnetCanAttract.item
execute as @e[tag=smpmag.magnetCanAttract.item] at @s run function smpmag:tool/magnet/item/filter

tp @e[tag=smpmag.magnetCanAttract.item] @s

tag @e[tag=smpmag.magnetCanAttract.item] remove smpmag.magnetCanAttract.item

tag @s remove ThisMagnetUser
