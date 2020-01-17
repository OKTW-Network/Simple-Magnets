scoreboard players set #smpmag_version Meta 1000

execute unless score #smpmag_version Meta = #smpmag_currently_version Meta if score #smpmag_version Meta > #smpmag_currently_version Meta if score #smpmag_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Simple Magnets]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#smpmag_currently_version","objective":"Meta"}},{"text":" -> ","color":"green"},{"score":{"name":"#smpmag_version","objective":"Meta"}}]
execute unless score #smpmag_version Meta = #smpmag_currently_version Meta if score #smpmag_version Meta < #smpmag_currently_version Meta if score #smpmag_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Simple Magnets]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#smpmag_currently_version","objective":"Meta"}},{"text":" -> ","color":"red"},{"score":{"name":"#smpmag_version","objective":"Meta"}}]
execute if score #smpmag_version Meta = #smpmag_currently_version Meta if score #smpmag_print_version Config matches 2 run tellraw @a ["",{"text":"[Simple Magnets]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#smpmag_version","objective":"Meta"}}]

scoreboard players operation #smpmag_currently_version Meta = #smpmag_version Meta

scoreboard players remove @s versionSmpMag 0
execute as @a unless score @s versionSmpMag = #smpmag_currently_version Meta run function smpmag:debug/remove_init_tag
execute as @a unless score @s versionSmpMag = #smpmag_currently_version Meta run scoreboard players operation @s versionSmpMag = #smpmag_currently_version Meta
