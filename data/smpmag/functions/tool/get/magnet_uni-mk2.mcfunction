data modify storage smpmag:get item prepend value {id:"minecraft:carrot_on_a_stick",Count:1b}
data modify storage smpmag:get itemTag set value []
function smpmag:tool/get/tag/magnet_uni-mk2
data modify storage smpmag:get item[0].tag set from storage smpmag:get itemTag[0]
