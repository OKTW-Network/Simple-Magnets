execute as @a[tag=!InitializedSmpMagScore] run function smpmag:meta/scoreboard/set_player_score

function smpmag:meta/detector/main

execute if score #magnet Config matches 1 run function smpmag:recipe/dropped/main
execute if score #magnet Config matches 1 as @a at @s run function smpmag:tool/magnet/main
