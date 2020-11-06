kill @e[tag=bspawn,tag=spawn]
summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1,NoGravity:1,Tags:["bspawn","spawn"]}
execute as @e[tag=bspawn,tag=spawn] store result entity @s Pos[0] double 1 run scoreboard players get #x bspawn-data
execute as @e[tag=bspawn,tag=spawn] store result entity @s Pos[1] double 1 run scoreboard players get #y bspawn-data
execute as @e[tag=bspawn,tag=spawn] store result entity @s Pos[2] double 1 run scoreboard players get #z bspawn-data
execute as @e[tag=bspawn,tag=spawn] store result entity @s Rotation[0] float 1 run scoreboard players get #rx bspawn-data
execute as @e[tag=bspawn,tag=spawn] store result entity @s Rotation[1] float 1 run scoreboard players get #ry bspawn-data
execute as @e[tag=bspawn,tag=spawn] at @s run tp @s ~ ~ ~
execute at @e[tag=bspawn,tag=spawn,limit=1] run tp @s ~ ~ ~ ~ ~

tellraw @s {"text":"Vous avez été téléporté au spawn.","color":"gold"}