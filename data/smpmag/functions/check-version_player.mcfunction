scoreboard players operation #new_x.*.*-* Version = #smpmag_currently_version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #smpmag_currently_version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #smpmag_currently_version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #smpmag_currently_version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = @s VersionSmpmagX
scoreboard players operation #currently_*.x.*-* Version = @s VersionSmpmagY
scoreboard players operation #currently_*.*.x-* Version = @s VersionSmpmagZ
scoreboard players operation #currently_*.*.*-x Version = @s VersionSmpmagA
function cu:version/check

execute if score #change Version matches 1 run function smpmag:debug/remove-init_tag

scoreboard players operation @s VersionSmpmagX = #smpmag_currently_version_x.*.*-* Meta
scoreboard players operation @s VersionSmpmagY = #smpmag_currently_version_*.x.*-* Meta
scoreboard players operation @s VersionSmpmagZ = #smpmag_currently_version_*.*.x-* Meta
scoreboard players operation @s VersionSmpmagA = #smpmag_currently_version_*.*.*-x Meta
