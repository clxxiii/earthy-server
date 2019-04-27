#This function is run when a player is marked as dead
scoreboard players remove @s dth 1
scoreboard players set @s jmp 5
scoreboard players set @s flt 0
xp add @s 1 levels
tellraw @a [{"selector":"@s"}, " ", {"text":"died","color":"white"}]
title @s title {"text": "You Died", "color": "red"}
title @s actionbar ""
title @s times 5 20 15
effect give @s minecraft:levitation 1 0 true
effect give @s minecraft:blindness 2 1 true
effect give @s minecraft:slowness 1 100 true
effect give @s minecraft:invisibility 1 0 true
execute at @s run particle minecraft:large_smoke ~ ~ ~ 0.1 1 0.1 0.15 32 normal @a
execute at @s run playsound minecraft:entity.evoker.death player @a ~ ~ ~ 0.7 1 0
function km:gameplay/spread
tag @s add display
execute if score @s dth matches 0 run function km:gameplay/loss
scoreboard players reset @s opr
scoreboard players reset @s dtm
execute if score @s fir matches 1.. run function km:gameplay/fire_death
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 0.75 1.7 1
xp set @s 0 levels