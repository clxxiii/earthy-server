summon minecraft:armor_stand -1185 0 -1108 {Invisible:1b,Tags:["rng_man"]}
execute store result score %rng% rng run data get entity @e[type=minecraft:armor_stand,limit=1,tag=rng_man] UUIDMost 0.000000000000001
kill @e[tag=rng_man]
execute if score %rng% rng matches ..0 run scoreboard players operation %rng% rng *= %-1% opr