attribute @s minecraft:scale base set 1.9
scoreboard players set @s size_timer 600
particle minecraft:reverse_portal ~ ~1.5 ~ 0.3 0.3 0.3 0 200
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 .1

execute if entity @s[type=minecraft:player] run tellraw @a [{"selector":"@a[tag=size_thrower,limit=1]","color":"gold"},{"text":" grew ","color":"gold"},{"selector":"@s","color":"gold"},{"text":"!","color":"gold"}]
tag @a remove size_thrower
tag @s remove size_shrunk
tag @s add size_grown
kill @e[type=minecraft:marker,tag=size_tracker,limit=1,sort=nearest]