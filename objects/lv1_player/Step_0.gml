// Movement
if (keyboard_check(vk_left)) hsp = -movespeed;
else if (keyboard_check(vk_right)) hsp = movespeed;
else hsp = 0;

vsp += grv;
if (place_meeting(x, y+1, obj_wall)) && keyboard_check_pressed(vk_space) vsp = jumpspeed;

// Collisions (horizontal)
if (place_meeting(x+hsp, y, obj_wall)) {
    while (!place_meeting(x+sign(hsp), y, obj_wall)) x += sign(hsp);
    hsp = 0;
}
x += hsp;

// Vertical similar...

// Clean pollution
if (place_meeting(x, y, obj_pollution)) {
    with (instance_place(x, y, obj_pollution)) instance_destroy();
    global.cleaned += 1; // Track progress
}

if (global.cleaned >= 10) room_goto(rm_level2); // Win condition: clean 10 items + find 3 pipes