function #smpmag:scoreboard-register
function smpmag:meta/scoreboard/register

function #smpmag:config

function smpmag:check-version

function smpmag:tool/initial

execute as @a run function smpmag:initial-player

execute if score #smpmag$print_init Config matches 1 run tellraw @a ["",{"text":"[Simple Magnets]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
