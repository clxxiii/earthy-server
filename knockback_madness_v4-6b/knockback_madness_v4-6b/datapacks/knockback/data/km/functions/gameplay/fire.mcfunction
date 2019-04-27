execute as @a[tag=dof] run function km:gameplay/spread
execute as @a store result score @s fir run data get entity @s Fire
execute as @a[scores={fir=1..}] unless score @s flt matches -50..-1 run scoreboard players set @s flt -50
execute as @a[scores={fir=1..,flt=-50..-1}] if score %frt% fir matches 1 run scoreboard players add @s flt 1
scoreboard players add @a[scores={fir=1..,flt=-50..-1}] flt 1
scoreboard players set @a[scores={flt=-1}] opr 99
scoreboard players add %frt% fir 1
execute if score %frt% fir matches 8 run scoreboard players set %frt% fir 0