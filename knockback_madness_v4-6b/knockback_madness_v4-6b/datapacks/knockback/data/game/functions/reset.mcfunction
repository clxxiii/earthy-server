scoreboard players set %gst% opr 0
tellraw @a ["", {"text":"[Game]:","bold":true,"color":"yellow"}," ", {"text":"Reset"}]
data merge block -1194 26 -1108 {Text3: "{\"bold\":true,\"text\":\"Game\"}", Text2: "{\"bold\":true,\"text\":\"Start\"}", id: "minecraft:sign", Text1: "{\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger opt set 504\"},\"text\":\"\"}"}
data remove block -1194 26 -1108 Text4
execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
title @a actionbar ""