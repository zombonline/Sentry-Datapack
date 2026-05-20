execute store result score global sentry_rng run random value 1..100
tellraw @s {"text":"RNG rolled: ","color":"white","extra":[{"score":{"name":"global","objective":"sentry_rng"}}]}
execute if score global sentry_rng matches 1..3 at @s rotated as @s run summon minecraft:item ^ ^2 ^2 {Item:{id:"minecraft:potion",count:1,components:{"minecraft:potion_contents":{"potion":"minecraft:water"},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{sentry_item:1,sentry_type:"rain_summon"},"minecraft:custom_name":{"text":"Distilled Petrichor","italic":false,"color":"blue"},"minecraft:lore":[{"text":"The skies of Sentry bend to your will","italic":false,"color":"gray"}],"minecraft:food":{"nutrition":0,"saturation":0}}}}
execute if score global sentry_rng matches 1..3 at @s rotated as @s run particle minecraft:falling_dripstone_water ^ ^2 ^2 0 0 0 0.1 60
execute if score global sentry_rng matches 1..3 at @s rotated as @s run particle minecraft:falling_dripstone_water ^.2 ^2 ^2 0 0 0 0.1 60
execute if score global sentry_rng matches 1..3 at @s rotated as @s run particle minecraft:falling_dripstone_water ^-.2 ^2 ^2 0 0 0 0.1 60

execute if score global sentry_rng matches 1..3 at @s run playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron player @s ~ ~ ~ 1 .2
advancement revoke @s only sentry:zombie_kill

