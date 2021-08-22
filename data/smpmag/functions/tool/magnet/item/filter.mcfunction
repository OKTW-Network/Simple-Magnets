tag @a[predicate=smpmag:tool/magnet/have-active_attract_item,sort=nearest,limit=1] add ThisMagnetPlayer
execute if entity @a[tag=ThisMagnetPlayer,tag=!ThisMagnetUser] run tag @s remove smpmag.magnetCanAttract.item

tag @a remove ThisMagnetPlayer
