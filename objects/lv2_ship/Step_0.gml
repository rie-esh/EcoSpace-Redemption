if (keyboard_check(vk_up)) speed += 0.2;
if (keyboard_check(vk_left)) direction += 5;
if (keyboard_check(vk_right)) direction -= 5;

// Shoot
if (keyboard_check_pressed(vk_space)) {
    var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
    bullet.direction = direction;
    bullet.speed = 10;
}

// Wrap screen (like Spacewar)
if (x > room_width) x = 0; // etc.

if (global.destroyed >= 20) room_goto(rm_ending);