scoreboard objectives add Meta dummy

function smpmag:check-dependency

execute if score #smpmag$dependency_missing Meta matches 0 if score #math$setup Meta matches 1 if score #cu$setup Meta matches 1 unless score #smpmag$setup Meta matches 1 run function smpmag:setup
