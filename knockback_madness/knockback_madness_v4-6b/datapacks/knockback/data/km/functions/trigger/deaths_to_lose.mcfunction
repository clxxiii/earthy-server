execute if score @s[scores={cro=1..}] opt matches 501 run function km:trigger/elim_mode_toggle
execute if score @s[x_rotation=-90..0] opt matches 501 run scoreboard players add %dtl% opr 5
execute if score @s[x_rotation=-90..0] opt matches 501 run playsound minecraft:block.note_block.hat master @s -1175 26 -1108 0.25 1.1
execute if score @s[x_rotation=-90..0] opt matches 501 run scoreboard players set @s opt 0
execute if score @s[x_rotation=0..90] opt matches 501 run scoreboard players remove %dtl% opr 5
execute if score @s[x_rotation=0..90] opt matches 501 run playsound minecraft:block.note_block.hat master @s -1175 26 -1108 0.25 0.85
execute if score @s[x_rotation=0..90] opt matches 501 run scoreboard players set @s opt 0
execute if score %dtl% opr matches ..4 run scoreboard players set %dtl% opr 5
execute if score %dtl% opr matches 26.. run scoreboard players set %dtl% opr 25
execute if score %emt% opr matches 1 run data merge block -1176 26 -1109 {Text1:"{\"text\":\"<+>\", \"clickEvent\": {\"action\":\"run_command\",\"value\":\"trigger opt set 501\"}, \"bold\":true, \"color\":\"dark_green\"}", Text2:"[\"\", {\"text\":\"Lives\"}, \": \", {\"score\":{\"name\":\"%dtl%\",\"objective\":\"opr\"}}]", Text3:"[{\"text\":\"Elimination\"}, \": \", {\"text\":\"ON\",\"bold\":\"true\"}]", Text4:"{\"text\":\"<->\",\"bold\":true,\"color\":\"dark_red\"}"}
execute if score %emt% opr matches 0 run data merge block -1176 26 -1109 {Text1:"{\"text\":\"<+>\", \"clickEvent\": {\"action\":\"run_command\",\"value\":\"trigger opt set 501\"}, \"bold\":true, \"color\":\"dark_green\"}", Text2:"[\"\", {\"text\":\"Lives\"}, \": \", {\"score\":{\"name\":\"%dtl%\",\"objective\":\"opr\"}}]", Text3:"[{\"text\":\"Elimination\"}, \": \", {\"text\":\"OFF\",\"bold\":\"true\"}]", Text4:"{\"text\":\"<->\",\"bold\":true,\"color\":\"dark_red\"}"}
execute as @a run function km:manual