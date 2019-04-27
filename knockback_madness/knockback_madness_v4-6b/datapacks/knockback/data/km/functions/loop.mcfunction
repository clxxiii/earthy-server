##Main loop

#Boundary/Item handling
execute positioned -1184 105 -1107 run scoreboard players set @a[distance=100..] opr 99
execute as @e[type=minecraft:item] run data merge entity @s {PickupDelay: 0s}

#Refreshers
execute as @a unless entity @s[nbt={foodLevel:20}] run effect give @s minecraft:saturation
execute as @a unless entity @s[nbt={ActiveEffects: [{Id: 8b}, {Id: 11b}, {Id: 1b}, {Id: 16b}]}] as @s run function km:gameplay/refresh
execute unless score %gst% opr matches 1 run effect give @a[nbt={ActiveEffects:[{Id:18b,Duration:1}]}] minecraft:weakness 5 4 true
execute unless score %gst% opr matches 1 as @a unless entity @s[nbt={ActiveEffects:[{Id:18b}]}] run effect give @s minecraft:weakness 5 4 true

#Gameplay loops
execute if score %gst% opr matches 1 run function km:gameplay/loop
execute if score %gst% opr matches 2.. run function km:start/loop
execute if score %djt% opr matches 1 run function km:gameplay/djump

#Death and return
execute as @a[scores={opr=99},gamemode=adventure] run function km:gameplay/death
execute as @a[scores={opr=99},gamemode=!adventure] run function km:gameplay/return

#Options Handling
execute as @a[scores={opt=1..999}] unless score %gst% opr matches 1 run function km:trigger_handling
execute as @a[scores={opt=1000..}] run function km:trigger/1k
scoreboard players remove @a[scores={cro=1..}] cro 1
execute store result score %pol% opr if entity @a

#New Player and Invalid State Detection
execute as @a[gamemode=adventure] if score %gst% opr matches 1 at @s if block ~ ~-2 ~ minecraft:bedrock run scoreboard players set @s opr 99
execute if score %gst% opr matches 0 as @a if entity @s[tag=in_game] run function km:new_player
execute as @a unless entity @s[tag=verified] run function km:new_player
execute if score %gst% opr matches 0 if entity @e[tag=jump_pad] run kill @e[tag=jump_pad]
tag @a[scores={lgs=1..}] remove verified
execute if score %gst% opr matches 0 if block -1185 28 -1108 minecraft:iron_block run fill -1187 28 -1110 -1183 28 -1106 minecraft:jungle_leaves replace minecraft:iron_block