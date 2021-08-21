tag @s add ThisMagnetUser

execute if entity @s[predicate=smpmag:tool/magnet/have-active_mk1_exp,predicate=!smpmag:tool/magnet/have-active_mk2_exp] run tag @e[distance=..3,type=experience_orb] add smpmag.magnetCanAttract.exp
execute if entity @s[predicate=smpmag:tool/magnet/have-active_mk2_exp] run tag @e[distance=..7,type=experience_orb] add smpmag.magnetCanAttract.exp
execute as @e[tag=smpmag.magnetCanAttract.exp] at @s if entity @a[predicate=smpmag:tool/magnet/have-active_attract_exp,sort=nearest,limit=1,tag=!ThisMagnetUser] run tag @s remove smpmag.magnetCanAttract.exp

scoreboard players set #exp_value_sum +SimpleMagnet 0
execute as @e[tag=smpmag.magnetCanAttract.exp] run function smpmag:tool/magnet/exp/value_sum

kill @e[tag=smpmag.magnetCanAttract.exp]

execute unless score #exp_value_sum +SimpleMagnet matches 0 run summon experience_orb ~ ~ ~ {Count:1,Value:0s,Tags:["smpmag.magnetMergedExpOrb"]}
execute unless score #exp_value_sum +SimpleMagnet matches 0 run execute store result entity @e[tag=smpmag.magnetMergedExpOrb,limit=1] Value short 1 run scoreboard players get #exp_value_sum +SimpleMagnet

tag @s remove ThisMagnetUser
