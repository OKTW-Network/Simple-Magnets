data modify storage smpmag:get item set value []
function smpmag:tool/get/magnet_item-mk1
data modify storage cu:item input set from storage smpmag:get item[0]
data modify storage cu:item pickupDelay set value 0s
function cu:item/summon
