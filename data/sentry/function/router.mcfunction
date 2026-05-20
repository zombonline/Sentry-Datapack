
execute if data entity @s SelectedItem.components."minecraft:custom_data"{sentry_type:"high_quality"} run function sentry:high_quality
execute if data entity @s SelectedItem.components."minecraft:custom_data"{sentry_type:"rain_summon"} run function sentry:rain_summon
advancement revoke @s only sentry:consume