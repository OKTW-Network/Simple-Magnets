execute if entity @s[predicate=minecraft:sneaking,predicate=smpmag:tool/magnet/hold,predicate=smpmag:tool/magnet/posture-hand_main] if predicate smpmag:tool/magnet/hand_main-status_0 run tag @s add smpmag.reqMagSwitchOn
execute if entity @s[predicate=minecraft:sneaking,predicate=smpmag:tool/magnet/hold,predicate=smpmag:tool/magnet/posture-hand_off] if predicate smpmag:tool/magnet/hand_off-status_0 run tag @s add smpmag.reqMagSwitchOn
execute if entity @s[predicate=minecraft:sneaking,predicate=smpmag:tool/magnet/hold,predicate=smpmag:tool/magnet/posture-hand_main] if predicate smpmag:tool/magnet/hand_main-status_1 run tag @s add smpmag.reqMagSwitchOff
execute if entity @s[predicate=minecraft:sneaking,predicate=smpmag:tool/magnet/hold,predicate=smpmag:tool/magnet/posture-hand_off] if predicate smpmag:tool/magnet/hand_off-status_1 run tag @s add smpmag.reqMagSwitchOff

execute if entity @s[tag=smpmag.reqMagSwitchOn] run function smpmag:tool/magnet/action/switch_on
execute if entity @s[tag=smpmag.reqMagSwitchOff] run function smpmag:tool/magnet/action/switch_off

tag @s[tag=smpmag.reqMagSwitchOn] remove smpmag.reqMagSwitchOn
tag @s[tag=smpmag.reqMagSwitchOff] remove smpmag.reqMagSwitchOff
