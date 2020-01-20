function smpmag:tool/meta/scoreboard/register
execute as @a[tag=!InitializedSmpMagToolScore] run function smpmag:tool/meta/scoreboard/set_player_score

execute if score #smpmag_print_init Config matches 1 run tellraw @a ["",{"text":"[Simple Magnets]: ","color":"yellow","bold":true},{"text":"Tool: "},{"text":"Initialize complete!"}]
