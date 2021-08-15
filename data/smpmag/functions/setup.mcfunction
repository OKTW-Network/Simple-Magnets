gamerule maxCommandChainLength 2147483647

scoreboard objectives add Config dummy

datapack disable "file/Simple-Magnets"
datapack disable "file/Simple-Magnets.zip"

execute store result score #smpmag$fileIsZip Meta run scoreboard players set #smpmag$fileType Meta 0

execute if score #cu$fileType Meta matches 1 store success score #smpmag$fileType Meta run datapack enable "file/Simple-Magnets" after "file/Creative-utilities"
execute if score #cu$fileType Meta matches 0 store success score #smpmag$fileType Meta run datapack enable "file/Simple-Magnets" after "file/Creative-utilities.zip"
execute unless score #smpmag$fileType Meta matches 1 if score #cu$fileType Meta matches 1 store success score #smpmag$fileIsZip Meta run datapack enable "file/Simple-Magnets.zip" after "file/Creative-utilities"
execute unless score #smpmag$fileType Meta matches 1 if score #cu$fileType Meta matches 0 store success score #smpmag$fileIsZip Meta run datapack enable "file/Simple-Magnets.zip" after "file/Creative-utilities.zip"

scoreboard players set #smpmag$setup Meta 1
execute if score #smpmag$fileType Meta matches 0 if score #smpmag$fileIsZip Meta matches 0 run scoreboard players set #smpmag$setup Meta -1
