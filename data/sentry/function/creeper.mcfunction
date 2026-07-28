summon minecraft:creeper ~ ~ ~
execute positioned ~ ~ ~ run attribute @e[type=minecraft:creeper,sort=nearest,limit=1,distance=..2] minecraft:scale base set 1.2
execute positioned ~ ~ ~ run attribute @e[type=minecraft:creeper,sort=nearest,limit=1,distance=..2] minecraft:movement_speed base set 0.325
execute positioned ~ ~ ~ run data merge entity @e[type=minecraft:creeper,sort=nearest,limit=1,distance=..2] {ExplosionRadius:6}