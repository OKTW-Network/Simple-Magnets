execute if predicate smpmag:tool/magnet/posture-hand_main run data modify storage smpmag:temp +tool.magnet.replaceitem.item set from entity @s SelectedItem
execute if predicate smpmag:tool/magnet/posture-hand_off run data modify storage smpmag:temp +tool.magnet.replaceitem.item set from entity @s Inventory[{Slot:-106b}]

data modify storage smpmag:temp +tool.magnet.replaceitem.item.tag.CustomData.smpmag.tag.status set value 1b
data modify storage smpmag:temp +tool.magnet.replaceitem.item.tag.Enchantments prepend value {id:"minecraft:looting",lvl:0s}
data modify storage cu:item input set from storage smpmag:temp +tool.magnet.replaceitem.item
execute if predicate smpmag:tool/magnet/posture-hand_main run function cu:item/replaceitem/hand_main
execute if predicate smpmag:tool/magnet/posture-hand_off run function cu:item/replaceitem/hand_off
