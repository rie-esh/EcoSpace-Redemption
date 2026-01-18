// Авто-камера follow player (только в level1)
if (room == rm_level1 && instance_exists(obj_player)) {
    var cam_x = clamp(obj_player.x - 640, 0, room_width - 1280);
    camera_set_view_pos(view_camera[0], cam_x, obj_player.y - 360);
}
// Win condition для level1
if (global.cleaned >= 10 && global.pipes >= 3) {  // Твои условия
    global.level1_done = true;
    global.levels_completed += 1;
    global.cleaned_underground = global.cleaned;  // Сохрани счёт
    room_goto(rm_level_select);  // Или rm_ending
}
//level 2
if (global.collected >= 5) {
    global.level2_done = true;
    global.levels_completed += 1;
    room_goto(rm_level_select);
}
//level 3
if (global.destroyed >= 20) {
    global.level3_done = true;
    global.levels_completed += 1;
    room_goto(rm_ending);
}