#$say $(yr1) $(yr2) $(xr1) $(xr2) $(wsname)
$execute if score WSY1 suTest >= WSY2 suTest unless entity @a[distance=..5,y_rotation=$(yr2)..$(yr1),x_rotation=$(xr1)..$(xr2)] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:air replace minecraft:structure_void
$execute if score WSY1 suTest <= WSY2 suTest unless entity @a[distance=..5,y_rotation=$(yr1)..$(yr2),x_rotation=$(xr1)..$(xr2)] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:air replace minecraft:structure_void
$execute if score WSY1 suTest >= WSY2 suTest unless entity @a[distance=..5,y_rotation=$(yr2)..$(yr1),x_rotation=$(xr1)..$(xr2)] run fill ~ ~ ~ ~ ~ ~ air replace $(wsname)
$execute if score WSY1 suTest <= WSY2 suTest unless entity @a[distance=..5,y_rotation=$(yr1)..$(yr2),x_rotation=$(xr1)..$(xr2)] run fill ~ ~ ~ ~ ~ ~ air replace $(wsname)
$execute if score WSY1 suTest >= WSY2 suTest unless entity @a[distance=..5,y_rotation=$(yr2)..$(yr1),x_rotation=$(xr1)..$(xr2)] run fill ~ ~-1 ~ ~ ~ ~ air replace stone_button
$execute if score WSY1 suTest <= WSY2 suTest unless entity @a[distance=..5,y_rotation=$(yr1)..$(yr2),x_rotation=$(xr1)..$(xr2)] run fill ~ ~-1 ~ ~ ~ ~ air replace stone_button
$execute if score WSY1 suTest >= WSY2 suTest unless entity @a[distance=..5,y_rotation=$(yr2)..$(yr1),x_rotation=$(xr1)..$(xr2)] run kill @s
$execute if score WSY1 suTest <= WSY2 suTest unless entity @a[distance=..5,y_rotation=$(yr1)..$(yr2),x_rotation=$(xr1)..$(xr2)] run kill @s

