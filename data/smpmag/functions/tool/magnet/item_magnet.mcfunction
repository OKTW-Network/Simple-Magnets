execute if entity @s[nbt={Inventory:[{tag:{itemMagnet:1,mk:1,status:1}}]}] if entity @e[type=minecraft:item,nbt={PickupDelay:0s},distance=..3] run tp @e[type=minecraft:item,nbt={PickupDelay:0s},distance=..3] @s
execute if entity @s[nbt={Inventory:[{tag:{itemMagnet:1,mk:2,status:1}}]},tag=MagnetRange1] if entity @e[type=minecraft:item,nbt={PickupDelay:0s},distance=..3] run tp @e[type=minecraft:item,nbt={PickupDelay:0s},distance=..3] @s
execute if entity @s[nbt={Inventory:[{tag:{itemMagnet:1,mk:2,status:1}}]},tag=MagnetRange2] if entity @e[type=minecraft:item,nbt={PickupDelay:0s},distance=..6] run tp @e[type=minecraft:item,nbt={PickupDelay:0s},distance=..6] @s
execute if entity @s[nbt={Inventory:[{tag:{itemMagnet:1,mk:2,status:1}}]},tag=MagnetRange3] if entity @e[type=minecraft:item,nbt={PickupDelay:0s},distance=..9] run tp @e[type=minecraft:item,nbt={PickupDelay:0s},distance=..9] @s
