#Calculation
scoreboard players remove @a[scores={flt=..-1}] flt 1
scoreboard players set @a[scores={flt=..-51}] flt 0
#Display
title @a[scores={flt=..-50}] actionbar {"text":"╠█████████████████╣","color":"dark_green"}
title @a[scores={flt=-49..-42}] actionbar {"text":"╠═███████████████═╣","color":"yellow"}
title @a[scores={flt=-41..-36}] actionbar {"text":"╠══█████████████══╣","color":"gold"}
title @a[scores={flt=-35..-30}] actionbar {"text":"╠═══███████████═══╣","color":"red"}
title @a[scores={flt=-29..-25}] actionbar {"text":"╠════█████████════╣","color":"red"}
title @a[scores={flt=-24..-20}] actionbar {"text":"╠═════███████═════╣","color":"dark_red"}
title @a[scores={flt=-19..-15}] actionbar {"text":"╠══════█████══════╣","color":"dark_red"}
title @a[scores={flt=-14..-10}] actionbar {"text":"╠═══════███═══════╣","color":"dark_red"}
title @a[scores={flt=-9..-5}] actionbar {"text":"╠════════█════════╣","color":"dark_red"}
title @a[scores={flt=-4..-1}] actionbar {"text":"╠═════════════════╣","color":"dark_red"}