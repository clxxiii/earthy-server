team join win @a[team=in_game]
stopsound @a
title @a times 5 50 5
title @a subtitle ""
title @a subtitle [{"selector":"@a[team=win]","bold":"false"}, " ", {"text":"won the match!","color":"white","bold":"false"}]
title @a title ""
tp @a -1185 25 -1108
playsound minecraft:ui.toast.challenge_complete master @a -1185 24 -1108 0.7 1.25 1
scoreboard players reset * dth
scoreboard players reset * fir
scoreboard players set %gst% opr 0