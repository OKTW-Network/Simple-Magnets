scoreboard players set @s[scores={isRClick=0,RClickCount=1..}] isRClick 1
scoreboard players set @s[scores={isRClick=1}] RClickCount 0

execute as @s[scores={isRClick=1}] run function smpmag:tool/use_item_request_manager

scoreboard players set @s[scores={isRClick=1,RClickCount=..0}] isRClick 0
