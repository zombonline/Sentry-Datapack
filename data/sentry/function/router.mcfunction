say router triggered

execute if data entity @s SelectedItem.components."minecraft:custom_data"{sentry_type:"combat"} run function sentry:combat_effects

advancement revoke @s only sentry:consume