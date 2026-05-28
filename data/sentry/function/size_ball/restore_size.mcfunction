attribute @s minecraft:scale base set 1.0
scoreboard players reset @s size_timer
execute at @s run particle minecraft:portal ~ ~ ~ 0.3 0.3 0.3 0 200
execute at @s run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 1