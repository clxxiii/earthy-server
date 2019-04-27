#Calculation
scoreboard players operation @s[scores={air=100..}] air /= %100% opr
scoreboard players operation @s[scores={air=1..}] air -= %fdd% opr
scoreboard players set @s[scores={air=1..}] opr 99
scoreboard players set @s[scores={air=1..}] air 0
scoreboard players set @s[scores={air=..-11,flt=0..}] air 0
scoreboard players set @s[scores={air=..-1,flt=0..}] flt 5
scoreboard players operation @s[scores={air=..-1,flt=0..}] flt *= @s air
scoreboard players operation @s[scores={air=..-1,flt=..-1}] air *= %-1% opr
scoreboard players operation @s[scores={air=1..,flt=..-1}] flt += @s air
scoreboard players set @s[scores={flt=1..}] opr 99
scoreboard players set @s air 0