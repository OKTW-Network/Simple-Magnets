scoreboard players operation #new_x.*.*-* Version = #smpmag$currently_version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #smpmag$currently_version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #smpmag$currently_version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #smpmag$currently_version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = @s VersionSmpmagX
scoreboard players operation #currently_*.x.*-* Version = @s VersionSmpmagY
scoreboard players operation #currently_*.*.x-* Version = @s VersionSmpmagZ
scoreboard players operation #currently_*.*.*-x Version = @s VersionSmpmagA
function cu:version/check

execute if score #change Version matches 1 run function smpmag:debug/re-give/everthing

scoreboard players operation @s VersionSmpmagX = #smpmag$currently_version_x.*.*-* Meta
scoreboard players operation @s VersionSmpmagY = #smpmag$currently_version_*.x.*-* Meta
scoreboard players operation @s VersionSmpmagZ = #smpmag$currently_version_*.*.x-* Meta
scoreboard players operation @s VersionSmpmagA = #smpmag$currently_version_*.*.*-x Meta
