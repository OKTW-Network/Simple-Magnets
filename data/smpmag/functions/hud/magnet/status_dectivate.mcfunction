execute if predicate smpmag:tool/magnet/posture-hand_main run data modify storage cu:string toStatic.input set from entity @s SelectedItem.tag.CustomData.smpmag.tag.typeName
execute if predicate smpmag:tool/magnet/posture-hand_off run data modify storage cu:string toStatic.input set from entity @s Inventory[{Slot:-106b}].tag.CustomData.smpmag.tag.typeName
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result
title @s actionbar {"translate":"%s: %s","with":[{"nbt":"toStatic.result","storage":"cu:string","interpret":true,"color": "white"},{"translate":"action.deactivate","color":"red"}],"color": "gray"}
