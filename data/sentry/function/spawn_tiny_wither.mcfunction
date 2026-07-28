summon minecraft:wither -500 120 0
execute positioned -500 120 0 run data merge entity @e[type=minecraft:wither,sort=nearest,limit=1,distance=..2] {Health:100.0f}
execute positioned -500 120 0 run attribute @e[type=minecraft:wither,sort=nearest,limit=1,distance=..2] minecraft:scale base set 0.35
execute positioned -500 120 0 run attribute @e[type=minecraft:wither,sort=nearest,limit=1,distance=..2] minecraft:max_health base set 100
execute positioned -500 120 0 run tp @e[type=minecraft:wither,sort=nearest,limit=1,distance=..2] -520 120 0