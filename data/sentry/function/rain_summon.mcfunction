scoreboard players set global sentry_rng 0
execute store result score global sentry_rng run random value 1..100
weather rain 2400

execute if score global sentry_rng matches 1..10 run weather thunder 2400
execute if score global sentry_rng matches 1..10 as @s run title @s actionbar {"text":"A storm is brewing...","color":"dark_gray"}
execute if score global sentry_rng matches 11..100 as @s run title @s actionbar {"text":"The skies of Sentry darken as rain begins to pour.","color":"blue"}
tellraw @a [{"selector":"@s","color":"blue"},{"text":" summoned rain!","color":"blue"}]
