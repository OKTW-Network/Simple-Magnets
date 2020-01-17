function smpmag:meta/scoreboard/register
function smpmag:config
function smpmag:version_check

execute as @a[tag=!InitializedSmpMagScore] run function smpmag:meta/scoreboard/set_player_score

function smpmag:tool/initial

execute if score #smpmag_print_init Config matches 1 run tellraw @a ["",{"text":"[Simple Magnets]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
