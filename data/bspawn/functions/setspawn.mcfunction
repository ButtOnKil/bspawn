execute as @s at @s store result score #x bspawn-data run data get entity @s Pos[0] 1
execute as @s at @s store result score #y bspawn-data run data get entity @s Pos[1] 1
execute as @s at @s store result score #z bspawn-data run data get entity @s Pos[2] 1
execute as @s at @s store result score #rx bspawn-data run data get entity @s Rotation[0] 1
execute as @s at @s store result score #ry bspawn-data run data get entity @s Rotation[1] 1
setworldspawn ~ ~ ~
tellraw @s {"text":"Le spawn a bien été défini.","color":"green"}