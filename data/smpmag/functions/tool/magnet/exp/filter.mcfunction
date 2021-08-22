tag @a[predicate=smpmag:tool/magnet/have-active_attract_exp,sort=nearest,limit=1] add ThisMagnetPlayer
execute if entity @a[tag=ThisMagnetPlayer,tag=!ThisMagnetUser] run tag @s remove smpmag.magnetCanAttract.exp

tag @a remove ThisMagnetPlayer
