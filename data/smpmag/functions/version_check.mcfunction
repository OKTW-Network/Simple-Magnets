scoreboard players set #smpmag_version_x.*.*-* Meta 1
scoreboard players set #smpmag_version_*.x.*-* Meta 0
scoreboard players set #smpmag_version_*.*.x-* Meta 2
scoreboard players set #smpmag_version_*.*.*-x Meta 0


scoreboard players operation #new_x.*.*-* Version = #smpmag_version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #smpmag_version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #smpmag_version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #smpmag_version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = #smpmag_currently_version_x.*.*-* Meta
scoreboard players operation #currently_*.x.*-* Version = #smpmag_currently_version_*.x.*-* Meta
scoreboard players operation #currently_*.*.x-* Version = #smpmag_currently_version_*.*.x-* Meta
scoreboard players operation #currently_*.*.*-x Version = #smpmag_currently_version_*.*.*-x Meta
function cu:version/check

function cu:version/build-new
function cu:version/build-currently

execute if score #none Version matches 1 if score #smpmag_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Simple Magnets]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.new","storage":"cu:resources","interpret":true}]
execute if score #change Version matches 1 if score #higher Version matches 1 if score #smpmag_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Simple Magnets]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.currently","storage":"cu:resources","interpret":true},{"text":" -> ","color":"green"},{"nbt":"version.new","storage":"cu:resources","interpret":true}]
execute if score #change Version matches 1 if score #lower Version matches 1 if score #smpmag_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Simple Magnets]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.currently","storage":"cu:resources","interpret":true},{"text":" -> ","color":"red"},{"nbt":"version.new","storage":"cu:resources","interpret":true}]
execute if score #change Version matches 0 if score #none Version matches 0 if score #smpmag_print_version Config matches 2 run tellraw @a ["",{"text":"[Simple Magnets]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.new","storage":"cu:resources","interpret":true}]

# execute if score #change Version matches 1 run function smpmag:debug/clean_up-scoreboard

scoreboard players operation #smpmag_currently_version_x.*.*-* Meta = #smpmag_version_x.*.*-* Meta
scoreboard players operation #smpmag_currently_version_*.x.*-* Meta = #smpmag_version_*.x.*-* Meta
scoreboard players operation #smpmag_currently_version_*.*.x-* Meta = #smpmag_version_*.*.x-* Meta
scoreboard players operation #smpmag_currently_version_*.*.*-x Meta = #smpmag_version_*.*.*-x Meta

scoreboard players remove @s versionSmpMag 0
# execute as @a unless score @s versionSmpMag = #smpmag_currently_version Meta run function smpmag:debug/clean_up-tag
execute as @a unless score @s versionSmpMag = #smpmag_currently_version Meta run function smpmag:debug/remove_init_tag
execute as @a unless score @s versionSmpMag = #smpmag_currently_version Meta run scoreboard players operation @s versionSmpMag = #smpmag_currently_version Meta
