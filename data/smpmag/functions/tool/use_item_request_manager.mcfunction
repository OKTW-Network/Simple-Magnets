function smpmag:tool/meta/detector/hold-magnet
function smpmag:tool/meta/detector/hold-magnet_item
function smpmag:tool/meta/detector/hold-magnet_exp
function smpmag:meta/detector/hold-mk
function smpmag:meta/detector/hold-status

execute if entity @s[tag=holdMagnet] store result score @s rangeMagnet run data get entity @s SelectedItem.tag.range
execute if entity @s[tag=holdMagnet] unless data entity @s SelectedItem.tag.range run scoreboard players set @s rangeMagnet 1


tag @s[predicate=minecraft:sneaking,tag=holdMagnet] add reqActMagnetStatus
tag @s[tag=reqActMagnetStatus,tag=holdStatus0] add MagnetStatus1
tag @s[tag=reqActMagnetStatus,tag=holdStatus1] add MagnetStatus0

execute if entity @s[tag=reqActMagnetStatus,tag=holdStatus0] run function smpmag:tool/magnet/action/switch_on
execute if entity @s[tag=reqActMagnetStatus,tag=holdStatus1] run function smpmag:tool/magnet/action/switch_off

execute if entity @s[tag=reqActMagnetStatus] run function smpmag:hud/magnet
execute if entity @s[tag=reqActMagnetStatus,tag=MagnetStatus0] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5 0
execute if entity @s[tag=reqActMagnetStatus,tag=MagnetStatus1] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5 2
execute if entity @s[tag=reqActMagnetStatus,tag=MagnetStatus0] run tag @s remove MagnetStatus0
execute if entity @s[tag=reqActMagnetStatus,tag=MagnetStatus1] run tag @s remove MagnetStatus1
execute if entity @s[tag=reqActMagnetStatus] run tag @s remove reqActMagnetStatus


tag @s[predicate=!minecraft:sneaking,tag=holdMagnet,tag=holdMk2,tag=holdStatus1] add reqActMagnetRange
scoreboard players add @s[tag=reqActMagnetRange] rangeMagnet 1
scoreboard players set @s[tag=reqActMagnetRange,scores={rangeMagnet=4..}] rangeMagnet 1

execute if entity @s[tag=reqActMagnetRange] run function smpmag:tool/magnet/action/range

execute if entity @s[tag=reqActMagnetRange] run function smpmag:hud/magnet
execute if entity @s[tag=reqActMagnetRange] at @s run playsound block.note_block.hat player @s ~ ~ ~ 0.5 1
execute if entity @s[tag=reqActMagnetRange] run tag @s remove reqActMagnetRange
