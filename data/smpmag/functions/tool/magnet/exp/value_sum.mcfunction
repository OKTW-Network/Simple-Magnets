execute store result score #1 calcu_temp run data get entity @s Value 1
execute store result score #2 calcu_temp run data get entity @s Count 1
scoreboard players operation #1 calcu_temp *= #2 calcu_temp
scoreboard players operation #exp_value_sum +SimpleMagnet += #1 calcu_temp
