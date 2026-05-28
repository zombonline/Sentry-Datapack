
execute if entity @e[type=minecraft:marker,tag=shrink] at @e[type=minecraft:marker,tag=size_tracker,limit=1,sort=nearest] as @e[type=!item,type=!marker,limit=1,sort=nearest,distance=..5] run function sentry:size_ball/apply_shrink
execute if entity @e[type=minecraft:marker,tag=grow] at @e[type=minecraft:marker,tag=size_tracker,limit=1,sort=nearest] as @e[type=!item,type=!marker,limit=1,sort=nearest,distance=..5] run function sentry:size_ball/apply_grow
kill @e[type=minecraft:marker,tag=size_tracker,limit=1,sort=nearest]
kill @e[type=minecraft:marker,tag=size_tracker,limit=1,sort=nearest]