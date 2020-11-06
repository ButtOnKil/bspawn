# Commande spawn
execute as @a at @s if score @s spawn matches 1.. run function bspawn:spawn
execute as @a at @s if score @s spawn matches 1.. run scoreboard players reset @s spawn
execute as @a at @s run scoreboard players enable @s spawn

# Commande setspawn
execute as @a at @s if score @s setspawn matches 1.. run function bspawn:setspawn
execute as @a at @s if score @s setspawn matches 1.. run scoreboard players reset @s setspawn
execute as @a at @s run scoreboard players enable @s setspawn
