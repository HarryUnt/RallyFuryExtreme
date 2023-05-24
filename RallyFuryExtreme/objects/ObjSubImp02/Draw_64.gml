/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_sprite_stretched(Velocimetro1,Tacometro1,800,540,280,280);
draw_sprite_stretched(Tacometro1,Tacometro1,926,676,28,126);
draw_text_transformed(830,480,"Velocidad",2.6,2.6,0);
draw_text_transformed(870,30,"Tiempo",2.6,2.6,0);
draw_sprite(Sprite15,Sprite15,50,700);
draw_sprite(Sprite16,Sprite16,50,600);

if (showsec < 10){
	draw_text_transformed(895,80, string(minutes) + ":0" + string(showsec),2.6,2.6,0);
}else if (showsec >= 10){
	draw_text_transformed(895,80, string(minutes) + ":" + string(showsec),2.6,2.6,0);
}
