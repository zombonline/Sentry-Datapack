scoreboard players add global size_counter 1
scoreboard players operation @s size_id = global size_counter
tag @s add size_tagged


execute at @s if data entity @s Item.components."minecraft:custom_data"{size_ball_type:"shrink"} run summon minecraft:marker ~ ~ ~ {Tags:["size_tracker","shrink"]}
execute at @s if data entity @s Item.components."minecraft:custom_data"{size_ball_type:"grow"} run summon minecraft:marker ~ ~ ~ {Tags:["size_tracker","grow"]}
execute at @s run tag @a[limit=1,sort=nearest] add size_thrower

scoreboard players operation @e[type=minecraft:marker,tag=size_tracker,sort=nearest,limit=1] size_id = @s size_id