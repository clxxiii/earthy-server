scoreboard players add @a[nbt={OnGround:0b}] dja 1
scoreboard players reset @a[nbt={OnGround:1b},scores={dja=1..}] dja
execute as @a[scores={dja=1..,flt=-50..-1,fir=..-1}] run scoreboard players add @s flt 1