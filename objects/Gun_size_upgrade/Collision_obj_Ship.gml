with(obj_Ship) {
morx += 0.5;
mory += 0.5;

}

instance_destroy();

instance_create_layer(150, 400, "no", textboxgun);

with(textboxgun) {
choicein = 3;

}