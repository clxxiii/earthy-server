#gameplay loop
function km:gameplay/air_time
execute if score %fdt% opr matches 1 as @a[scores={air=1..}] run function km:gameplay/falldeath
function km:gameplay/fire
function km:gameplay/falldeathdisplay
function km:gameplay/respawn_protect
function km:gameplay/log_out_update
kill @e[nbt={inGround:1b},type=arrow]
execute if score %pig% opr matches 1 unless entity @a[tag=debug] run function km:gameplay/end
execute if score %pig% opr matches 0 unless entity @a[tag=debug] run scoreboard players set %gst% opr 0
execute store result score %pig% opr if entity @a[team=in_game]