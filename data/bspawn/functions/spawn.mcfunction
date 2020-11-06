# Création armor_stand
execute in minecraft:overworld run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1,NoGravity:1,Tags:["bspawn","spawn"]}

# Copie des coordonnées
execute as @e[tag=bspawn,tag=spawn] store result entity @s Pos[0] double 1 run scoreboard players get #x bspawn-data
execute as @e[tag=bspawn,tag=spawn] store result entity @s Pos[1] double 1 run scoreboard players get #y bspawn-data
execute as @e[tag=bspawn,tag=spawn] store result entity @s Pos[2] double 1 run scoreboard players get #z bspawn-data
execute as @e[tag=bspawn,tag=spawn] store result entity @s Rotation[0] float 1 run scoreboard players get #rx bspawn-data
execute as @e[tag=bspawn,tag=spawn] store result entity @s Rotation[1] float 1 run scoreboard players get #ry bspawn-data

# TP de l'armor_stand
execute in minecraft:overworld as @e[tag=bspawn,tag=spawn] at @s run tp @s ~ ~ ~

# TP du joueur
execute in minecraft:overworld at @e[tag=bspawn,tag=spawn,limit=1] run tp @s ~ ~ ~ ~ ~

# Suppression de l'armor_stand
kill @e[tag=bspawn,tag=spawn]

# Message
tellraw @s {"text":"Vous avez été téléporté au spawn.","color":"gold"}