attribute @s minecraft:scale base set 0.3
scoreboard players set @s size_timer 600
particle minecraft:reverse_portal ~ ~1.5 ~ 0.3 0.3 0.3 0 200
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 2

execute if entity @s[type=minecraft:player] run tellraw @a [{"selector":"@a[tag=size_thrower,limit=1]","color":"aqua"},{"text":" shrank ","color":"aqua"},{"selector":"@s","color":"aqua"},{"text":"!","color":"aqua"}]
tag @a remove size_thrower
tag @s add size_shrunk
tag @s remove size_grown
kill @e[type=minecraft:marker,tag=size_tracker,limit=1,sort=nearest]