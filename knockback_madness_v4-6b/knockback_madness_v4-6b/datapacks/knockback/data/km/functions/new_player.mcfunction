scoreboard players reset @s
scoreboard players set @s jmp 0
scoreboard players enable @s opt
effect clear @s
clear @s
xp set @s 0 levels
xp set @s 0 points
execute if score %gst% opr matches 0 run gamemode adventure @s[gamemode=!adventure]
execute if score %gst% opr matches 1 run gamemode spectator @s[gamemode=!spectator]
execute if score %gst% opr matches 0 run tag @s remove in_game
tp @s[gamemode=adventure] -1185 25 -1108
tp @s[gamemode=spectator] -1185 40 -1108
spawnpoint @s -1185 25 -1108
team leave @s[team=elim]
team leave @s[team=in_game]
function km:manual
tag @s remove display
tag @s add verified
give @s[team=win] minecraft:firework_rocket{CanPlaceOn:["minecraft:bedrock"],Fireworks: {Flight: 1b, Explosions: [{Type: 4b, Colors: [I; 2437522, 15435844, 11743532]}]}} 4