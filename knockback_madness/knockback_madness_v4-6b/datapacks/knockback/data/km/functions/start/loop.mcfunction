#Start loop
scoreboard players remove %gst% opr 1

#Timer Readouts
execute if score %gst% opr matches 199 run title @a times 5 20 15
execute if score %gst% opr matches 198 run title @a actionbar {"text":"The game is starting in 10 seconds","color":"dark_aqua"}
execute if score %gst% opr matches 180 run title @a actionbar {"text":"The game is starting in 9 seconds","color":"dark_aqua"}
execute if score %gst% opr matches 160 run title @a actionbar {"text":"The game is starting in 8 seconds","color":"dark_aqua"}
execute if score %gst% opr matches 140 run title @a actionbar {"text":"The game is starting in 7 seconds","color":"dark_aqua"}
execute if score %gst% opr matches 120 run title @a actionbar {"text":"The game is starting in 6 seconds","color":"dark_aqua"}
execute if score %gst% opr matches 100 run title @a actionbar {"text":"The game is starting in 5 seconds","color":"dark_aqua"}
execute if score %gst% opr matches 80 run title @a actionbar {"text":"The game is starting in 4 seconds","color":"dark_aqua"}
execute if score %gst% opr matches 60 run title @a actionbar {"text":"The game is starting...","color":"dark_aqua"}
execute if score %gst% opr matches 198 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.6 2
execute if score %gst% opr matches 196 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.6 2
execute if score %gst% opr matches 60 run title @a title {"text":"3","color":"red"}
execute if score %gst% opr matches 60 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.6 0.5
execute if score %gst% opr matches 40 run title @a title {"text":"2","color":"yellow"}
execute if score %gst% opr matches 40 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.6 0.5
execute if score %gst% opr matches 20 run title @a title {"text":"1","color":"gold"}
execute if score %gst% opr matches 20 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.6 0.5
execute if score %gst% opr matches 1 run title @a title {"text":"GO!","color":"green"}

#Start Functionality
execute if score %gst% opr matches 199 run scoreboard objectives add dth dummy {"text":"Lives"}
execute if score %gst% opr matches 199 run scoreboard players set %pig% opr 100
execute if score %gst% opr matches 1 run scoreboard players set @a dth 5
execute if score %gst% opr matches 1 run team leave @a
execute if score %gst% opr matches 1 run team join in_game @a
execute if score %gst% opr matches 1 run clear @a
execute if score %gst% opr matches 1 as @a run function km:gameplay/spread
execute if score %gst% opr matches 1 run gamemode adventure @a
execute if score %gst% opr matches 1 run give @a minecraft:bow{Unbreakable:1,HideFlags:2 ,Enchantments: [{lvl: 1s, id: "minecraft:infinity"}, {lvl: 3s, id: "minecraft:punch"}, {lvl: 4s, id: "minecraft:knockback"}], display: {Name:"{\"color\":\"gold\"}"}}
execute if score %gst% opr matches 1 run give @a minecraft:arrow 1
execute if score %gst% opr matches 1 run function km:start/jumppads
execute if score %gst% opr matches 1 run tag @a add in_game
execute if score %gst% opr matches 1 run xp set @a 0 levels
execute if score %gst% opr matches 1 run scoreboard objectives setdisplay sidebar dth
execute if score %gst% opr matches 1 as @a run scoreboard players operation @s dth = %dtl% opr
execute if score %gst% opr matches 1 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.6 1 1