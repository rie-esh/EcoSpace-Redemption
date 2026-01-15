// Разблокировка уровней по прогрессу
if (point_in_rectangle(mouse_x, mouse_y, зона1) && mouse_check_button_pressed(mb_left)) {
    room_goto(rm_level1);  // Всегда доступен
}
if (point_in_rectangle(mouse_x, mouse_y, зона2) && mouse_check_button_pressed(mb_left)) {
    if (global.level1_done) {  // Только после level1
        room_goto(rm_level2);
    } else {
        // Показать "Заблокировано" (в Draw)
    }
}
if (point_in_rectangle(mouse_x, mouse_y, зона3) && mouse_check_button_pressed(mb_left)) {
    if (global.level2_done) {
        room_goto(rm_level3);
    }
}

// Обнови спрайт Земли по прогрессу
if (global.levels_completed == 3) {
    earth_spr = spr_earth_clean3;
} else if (global.levels_completed >= 2) {
    earth_spr = spr_earth_clean2;
} // и т.д.