data modify storage smpmag:get item set value []
function smpmag:tool/get/magnet_uni-mk2
data modify storage cu:item input set from storage smpmag:get item[0]
data modify storage cu:item owner set from entity @s UUID
function cu:item/give
