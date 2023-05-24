var a =keyboard_check(ord("A"));
var d =keyboard_check(ord("D"));
var w =keyboard_check(ord("W"));
var s =keyboard_check(ord("S"));
var l =keyboard_check(ord("L"));
var p =keyboard_check(ord("P"));
hasFinished = false;

if (w)
{
	speed += acc;
	draw_sprite_ext(Tacometro1, 0, 1, 1, -1, 1, image_angle, -1, 1);
}

if (d)
{
	direction -= speed*turnradius;
}

if (s)
{
	speed -= acc;
	draw_sprite_ext(Tacometro1, 0, 1, 1, -1, 1, image_angle, -1, 1);
}

if (a)
{
	direction += speed*turnradius;
}

if !w and !s
{
	if friction < 1 friction += 0.01;
}
else friction = 0;

if speed > forwardspd speed = forwardspd;
if speed < reversespd speed = reversespd;

image_angle = direction;

if (l){
	room_goto(Sala1);
}

if (p){
	room_goto(Sala0);
	audio_play_sound(Click,8,false);
	audio_stop_sound(CtrlMenu);
}

showsec = ceil(seconds);

if (place_meeting(x,y,Backgro3)){
    hasFinished = true;
}

if (ObjSubImp02.speed > 0 && ObjSubImp02.hasFinished == false) 
{ 
	seconds = seconds + delta_time/1000000; 
	if (seconds > 59.9){
		seconds = 0;
		minutes =+ 1;
	}
}