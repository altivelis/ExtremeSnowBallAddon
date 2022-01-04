#bridge-file-version: #24
scoreboard objectives add smoketime dummy
scoreboard players add @e[type=armor_stand,name="smoke"] smoketime 1
execute @e[type=armor_stand,name="smoke"] ~~-200~ particle altivelis:smoke_white_inner_5 ~~~
kill @e[type=armor_stand,name="smoke",scores={smoketime=400..}]
execute @e[type=armor_stand,name="smoke"] ~~~ tp ~~~
 
#時間経過で雪玉キル
scoreboard objectives add snowballtime dummy
scoreboard players add @e[type=snowball] snowballtime 1
execute @e[type=snowball,scores={snowballtime=200}] ~~~ particle minecraft:explosion_particle ~~~
kill @e[type=snowball,scores={snowballtime=200..}]
 
#クリスタルキル
execute @a ~~~ execute @e[type=ender_crystal,r=2] ~~~ particle minecraft:critical_hit_emitter ~~1~
execute @a ~~~ kill @e[type=ender_crystal,r=2]
 
#雪玉とめる
execute @e[type=snowball,tag=stop] ~~~ tp ~~~
 
#雪玉パーティクル
#execute @e[type=snowball,tag=] ~~~ particle 
execute @e[type=snowball,tag=bigshot] ~~~ particle minecraft:campfire_tall_smoke_particle ~~~
execute @e[type=snowball,tag=fastshot] ~~~ particle minecraft:egg_destroy_emitter ~~~
execute @e[type=snowball,tag=fireball] ~~~ particle minecraft:basic_flame_particle ~~~
execute @e[type=snowball,tag=lightningball] ~~~ particle minecraft:balloon_gas_particle ~~~
execute @e[type=snowball,tag=bombball] ~~~ particle minecraft:dragon_destroy_block ~~~
execute @e[type=snowball,tag=blindball] ~~~ particle minecraft:explosion_particle ~~~
execute @e[type=snowball,tag=slownessball] ~~~ particle minecraft:wither_boss_invulnerable ~~~
execute @e[type=snowball,tag=levitationball] ~~~ particle minecraft:magnesium_salts_emitter ~~~
execute @e[type=snowball,tag=damageball] ~~~ particle minecraft:dragon_breath_fire ~~~
execute @e[type=snowball,tag=invisibleball] ~~~ particle minecraft:end_chest ~~~
execute @e[type=snowball,tag=smokeball] ~~~ particle minecraft:cauldron_explosion_emitter ~~~
execute @e[type=snowball,tag=oneshot] ~~~ particle minecraft:obsidian_glow_dust_particle ~~~
 