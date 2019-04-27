execute if score @s[scores={cro=1..}] opt matches 503 run function km:trigger/fall_death_toggle
execute if score @s[x_rotation=-90..0] opt matches 503 run scoreboard players add %fdd% opr 5
execute if score @s[x_rotation=-90..0] opt matches 503 run playsound minecraft:block.note_block.hat master @s -1175 26 -1108 0.25 1.1
execute if score @s[x_rotation=-90..0] opt matches 503 run scoreboard players set @s opt 0
execute if score @s[x_rotation=0..90] opt matches 503 run scoreboard players remove %fdd% opr 5
execute if score @s[x_rotation=0..90] opt matches 503 run playsound minecraft:block.note_block.hat master @s -1175 26 -1108 0.25 0.85
execute if score @s[x_rotation=0..90] opt matches 503 run scoreboard players set @s opt 0
execute if score %fdd% opr matches ..4 run scoreboard players set %fdd% opr 5
execute if score %fdd% opr matches 76.. run scoreboard players set %fdd% opr 75
execute if score %fdt% opr matches 1 run data merge block -1176 26 -1107 {Text1:"{\"text\":\"<+>\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger opt set 503\"},\"bold\":true,\"color\":\"dark_green\"}",Text2:"[\"\", {\"text\":\"Fall Limit\"}, \": \", {\"score\":{\"name\":\"%fdd%\",\"objective\":\"opr\"}}]", Text3:"[{\"text\":\"Fall Death\"}, \": \", {\"text\":\"ON\",\"bold\":\"true\"}]", Text4:"{\"text\":\"<->\",\"bold\":true,\"color\":\"dark_red\"}"}
execute if score %fdt% opr matches 0 run data merge block -1176 26 -1107 {Text1:"{\"text\":\"<+>\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"trigger opt set 503\"},\"bold\":true,\"color\":\"dark_green\"}",Text2:"[\"\", {\"text\":\"Fall Limit\"}, \": \", {\"score\":{\"name\":\"%fdd%\",\"objective\":\"opr\"}}]", Text3:"[{\"text\":\"Fall Death\"}, \": \", {\"text\":\"OFF\",\"bold\":\"true\"}]", Text4:"{\"text\":\"<->\",\"bold\":true,\"color\":\"dark_red\"}"}