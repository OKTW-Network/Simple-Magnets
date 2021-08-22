execute store result score #2 calcu_temp run scoreboard players operation #1 calcu_temp = #exp_value_sum +SimpleMagnet
scoreboard players set #3 calcu_temp 32767
scoreboard players operation #2 calcu_temp /= #3 calcu_temp
execute if score #exp_value_sum +SimpleMagnet matches 32767.. run scoreboard players set #1 calcu_temp 32767

summon experience_orb ~ ~ ~ {Count:1,Value:0s,Tags:["smpmag.magnetMergedExpOrb","init"]}
execute store result entity @e[tag=smpmag.magnetMergedExpOrb,tag=init,limit=1] Value short 1 run scoreboard players get #1 calcu_temp
execute if score #2 calcu_temp matches 2.. store result entity @e[tag=smpmag.magnetMergedExpOrb,tag=init,limit=1] Count int 1 run scoreboard players get #2 calcu_temp
tag @e[tag=smpmag.magnetMergedExpOrb,tag=init] remove init

execute if score #exp_value_sum +SimpleMagnet matches ..32766 run scoreboard players set #exp_value_sum +SimpleMagnet 0
execute if score #exp_value_sum +SimpleMagnet matches 32767.. run scoreboard players operation #3 calcu_temp *= #2 calcu_temp
execute if score #exp_value_sum +SimpleMagnet matches 32767.. run scoreboard players operation #exp_value_sum +SimpleMagnet -= #3 calcu_temp

execute if score #exp_value_sum +SimpleMagnet matches 1.. run function smpmag:tool/magnet/exp/summon_orb
