tag @s add ThisMagnetUser

execute if entity @s[predicate=smpmag:tool/magnet/have-active_mk1_exp,predicate=!smpmag:tool/magnet/have-active_mk2_exp] run tag @e[distance=..3,type=experience_orb] add smpmag.magnetCanAttract.exp
execute if entity @s[predicate=smpmag:tool/magnet/have-active_mk2_exp] run tag @e[distance=..7,type=experience_orb] add smpmag.magnetCanAttract.exp
execute as @e[tag=smpmag.magnetCanAttract.exp] at @s if entity @a[predicate=smpmag:tool/magnet/have-active_attract_exp,sort=nearest,limit=1,tag=!ThisMagnetUser] run tag @s remove smpmag.magnetCanAttract.exp

scoreboard players set #exp_value_sum +SimpleMagnet 0
execute as @e[tag=smpmag.magnetCanAttract.exp,tag=!smpmag.magnetMergedExpOrb] run function smpmag:tool/magnet/exp/value_sum
kill @e[tag=smpmag.magnetCanAttract.exp,tag=!smpmag.magnetMergedExpOrb]
execute unless score #exp_value_sum +SimpleMagnet matches 0 run function smpmag:tool/magnet/exp/summon_orb
tp @e[tag=smpmag.magnetCanAttract.exp,tag=smpmag.magnetMergedExpOrb] @s

tag @s remove ThisMagnetUser
