tag @e[predicate=!smpmag:entity/item-can_be_attracted_by_magnet,tag=smpmag.magnetCanAttract.item] remove smpmag.magnetCanAttract.item
tag @e[distance=..14,predicate=smpmag:entity/item-can_be_attracted_by_magnet,tag=!smpmag.magnetCanAttract.item] add smpmag.magnetCanAttract.item

execute if entity @s[predicate=smpmag:tool/magnet/have-active_mk1,predicate=!smpmag:tool/magnet/have-active_mk2] if entity @e[tag=smpmag.magnetCanAttract.item,distance=..3] run tp @e[tag=smpmag.magnetCanAttract.item,distance=..3] @s
execute if entity @s[predicate=smpmag:tool/magnet/have-active_mk2] if entity @e[tag=smpmag.magnetCanAttract.item,distance=..7] run tp @e[tag=smpmag.magnetCanAttract.item,distance=..7] @s
