tag @e[distance=..14,type=experience_orb,tag=!smpmag.magnetCanAttract.exp] add smpmag.magnetCanAttract.exp

execute if entity @s[predicate=smpmag:tool/magnet/have-active_mk1,predicate=!smpmag:tool/magnet/have-active_mk2] if entity @e[tag=smpmag.magnetCanAttract.exp,distance=..3] run tp @e[tag=smpmag.magnetCanAttract.exp,distance=..3] @s
execute if entity @s[predicate=smpmag:tool/magnet/have-active_mk2] if entity @e[tag=smpmag.magnetCanAttract.exp,distance=..7] run tp @e[tag=smpmag.magnetCanAttract.exp,distance=..7] @s
