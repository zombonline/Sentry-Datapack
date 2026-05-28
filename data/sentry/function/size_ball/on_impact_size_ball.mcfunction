execute if entity @e[type=minecraft:marker,tag=shrink] at @e[type=minecraft:marker,tag=size_tracker,limit=1,sort=nearest] as @e[type=!item,type=!marker,type=!player,limit=1,sort=nearest,distance=..5] if score @s size_timer matches 0 run function sentry:size_ball/apply_shrink
execute if entity @e[type=minecraft:marker,tag=shrink] at @e[type=minecraft:marker,tag=size_tracker,limit=1,sort=nearest] as @e[type=!item,type=!marker,type=!player,limit=1,sort=nearest,distance=..5] if score @s size_timer matches 1.. run function sentry:size_ball/restore_size
execute if entity @e[type=minecraft:marker,tag=grow] at @e[type=minecraft:marker,tag=size_tracker,limit=1,sort=nearest] as @e[type=!item,type=!marker,type=!player,limit=1,sort=nearest,distance=..5] if score @s size_timer matches 0 run function sentry:size_ball/apply_grow
execute if entity @e[type=minecraft:marker,tag=grow] at @e[type=minecraft:marker,tag=size_tracker,limit=1,sort=nearest] as @e[type=!item,type=!marker,type=!player,limit=1,sort=nearest,distance=..5] if score @s size_timer matches 1.. run function sentry:size_ball/restore_size

# Players always get the new size regardless
execute if entity @e[type=minecraft:marker,tag=shrink] at @e[type=minecraft:marker,tag=size_tracker,limit=1,sort=nearest] as @a[limit=1,sort=nearest,distance=..5] run function sentry:size_ball/apply_shrink
execute if entity @e[type=minecraft:marker,tag=grow] at @e[type=minecraft:marker,tag=size_tracker,limit=1,sort=nearest] as @a[limit=1,sort=nearest,distance=..5] run function sentry:size_ball/apply_grow


kill @e[type=minecraft:marker,tag=size_tracker,limit=1,sort=nearest]
kill @e[type=minecraft:marker,tag=size_tracker,limit=1,sort=nearest]