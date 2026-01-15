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