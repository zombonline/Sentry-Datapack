execute as @e[type=minecraft:snowball,tag=!size_tagged] if data entity @s Item.components."minecraft:custom_data"{sentry_type:"size_ball"} run function sentry:size_ball/init_size_ball
execute as @e[type=minecraft:snowball,tag=size_tagged] at @s run function sentry:size_ball/track_size_ball
execute if entity @e[type=minecraft:marker,tag=size_tracker] unless entity @e[type=minecraft:snowball,tag=size_tagged] run function sentry:size_ball/on_impact_size_ball


execute as @a[scores={size_timer=1..}] run scoreboard players remove @s size_timer 1
execute as @a[scores={size_timer=0}] run function sentry:size_ball/restore_size