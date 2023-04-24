/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(keyboard_check_pressed(ord("Arriba"))){
	y -= spd;
}else if(keyboard_check_pressed(ord("Abajo"))){
	y += spd;
}else if(keyboard_check_pressed(ord("Izquierda"))){
	x -= spd;
	switch (sprite_index){
		case SubImpWRC2002Left:
		sprite_index = SubImpWRC2002Left;
	    image_index = 0;
		case SubImpWRC2002Idle:
		sprite_index = SubImpWRC2002Idle;
		break;
	}
}else if(keyboard_check_pressed(ord("Derecha"))){
	x += spd;
	switch (sprite_index){
		case SubImpWRC2002Right:
		sprite_index = SubImpWRC2002Right;
	    image_index = 0;
		case SubImpWRC2002Idle:
		sprite_index = SubImpWRC2002Idle;
		break;
	}
}else if(keyboard_check_pressed(ord("Espacio"))){
	x += spd;
	switch (sprite_index){
		case SubImpWRC2002Jump:
		sprite_index = SubImpWRC2002Jump;
	    image_index = 0;
		image_speed = 0.5;
		case SubImpWRC2002Idle:
		sprite_index = SubImpWRC2002Idle;
		break;
	}
}