execute as @a[tag=!InitializedSmpMagScore] run function smpmag:meta/scoreboard/set_player_score

function smpmag:meta/detector/main

function smpmag:recipe/dropped/main
execute as @a at @s run function smpmag:tool/magnet/main
