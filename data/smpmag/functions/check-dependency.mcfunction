scoreboard players set #smpmag$dependency_missing Meta 0

execute store success score #smpmag$dependency-math Meta run function math:version
execute store success score #smpmag$dependency-cu Meta run function cu:version

execute if score #smpmag$dependency-math Meta matches 0 run scoreboard players set #smpmag$dependency_missing Meta 1
execute if score #smpmag$dependency-cu Meta matches 0 run scoreboard players set #smpmag$dependency_missing Meta 1

execute store success score #smpmag$broadcast_type Meta if entity @a

execute if score #smpmag$broadcast_type Meta matches 0 if score #smpmag$dependency_missing Meta matches 1 run say [Simple Magnets] Missing dependency:
execute if score #smpmag$broadcast_type Meta matches 0 if score #smpmag$dependency-math Meta matches 0 run say  - Math Integraion (https://github.com/OKTW-Network/Math-integration)
execute if score #smpmag$broadcast_type Meta matches 0 if score #smpmag$dependency-cu Meta matches 0 run say  - Creative Utilities (https://github.com/OKTW-Network/Creative-utilities)

execute if score #smpmag$broadcast_type Meta matches 1 if score #smpmag$dependency_missing Meta matches 1 run tellraw @a ["",{"text":"[Simple Magnets]: ","color":"yellow","bold":true},{"text":"Missing dependency: ","color":"red"}]
execute if score #smpmag$broadcast_type Meta matches 1 if score #smpmag$dependency-math Meta matches 0 run tellraw @a ["",{"text":" - "},{"text":"Math Integraion","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","value":"Click here for the Github page"},"clickEvent":{"action":"open_url","value":"https://github.com/OKTW-Network/Math-integration"}}]
execute if score #smpmag$broadcast_type Meta matches 1 if score #smpmag$dependency-cu Meta matches 0 run tellraw @a ["",{"text":" - "},{"text":"Creative Utilities","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","value":"Click here for the Github page"},"clickEvent":{"action":"open_url","value":"https://github.com/OKTW-Network/Creative-utilities"}}]
