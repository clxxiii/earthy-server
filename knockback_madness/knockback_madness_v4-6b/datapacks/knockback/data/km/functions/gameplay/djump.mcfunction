execute as @a unless score @s jmp matches 1.. run scoreboard players set @a[scores={cro=1,dja=5..},nbt={OnGround:0b},gamemode=adventure] jmp 1
execute as @a[scores={jmp=1},gamemode=adventure] at @s run playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 1 0
scoreboard players add @a[scores={jmp=1..4},gamemode=adventure] jmp 1
effect give @a[scores={jmp=2},gamemode=adventure] minecraft:levitation 10 50 true
execute as @a[scores={jmp=2},gamemode=adventure] at @s run particle minecraft:cloud ~ ~ ~ 0.01 0 0.01 0.1 8 normal @a
effect clear @a[scores={jmp=4},gamemode=adventure] minecraft:levitation
scoreboard players set @a[scores={jmp=4..},nbt={OnGround:1b},gamemode=adventure] cro 0
scoreboard players reset @a[scores={jmp=4..},nbt={OnGround:1b},gamemode=adventure] jmp