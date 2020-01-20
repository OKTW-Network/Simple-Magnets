execute if entity @s[tag=holdMagnetItem,tag=!holdMagnetExp,scores={rangeMagnet=1}] run function smpmag:tool/replace-hand-main/magnet_item-mk2-status1-range1
execute if entity @s[tag=holdMagnetItem,tag=!holdMagnetExp,scores={rangeMagnet=2}] run function smpmag:tool/replace-hand-main/magnet_item-mk2-status1-range2
execute if entity @s[tag=holdMagnetItem,tag=!holdMagnetExp,scores={rangeMagnet=3}] run function smpmag:tool/replace-hand-main/magnet_item-mk2-status1-range3

execute if entity @s[tag=holdMagnetExp,tag=!holdMagnetItem,scores={rangeMagnet=1}] run function smpmag:tool/replace-hand-main/magnet_exp-mk2-status1-range1
execute if entity @s[tag=holdMagnetExp,tag=!holdMagnetItem,scores={rangeMagnet=2}] run function smpmag:tool/replace-hand-main/magnet_exp-mk2-status1-range2
execute if entity @s[tag=holdMagnetExp,tag=!holdMagnetItem,scores={rangeMagnet=3}] run function smpmag:tool/replace-hand-main/magnet_exp-mk2-status1-range3

execute if entity @s[tag=holdMagnetItem,tag=holdMagnetExp,scores={rangeMagnet=1}] run function smpmag:tool/replace-hand-main/magnet_uni-mk2-status1-range1
execute if entity @s[tag=holdMagnetItem,tag=holdMagnetExp,scores={rangeMagnet=2}] run function smpmag:tool/replace-hand-main/magnet_uni-mk2-status1-range2
execute if entity @s[tag=holdMagnetItem,tag=holdMagnetExp,scores={rangeMagnet=3}] run function smpmag:tool/replace-hand-main/magnet_uni-mk2-status1-range3
