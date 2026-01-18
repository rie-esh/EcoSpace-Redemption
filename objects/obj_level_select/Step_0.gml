
// Обнови спрайт Земли по прогрессу
if (global.levels_completed == 3) {
    earth_spr = spr_earth_clean3;
} else if (global.levels_completed == 2) {
    earth_spr = spr_earth_clean2;
} else if (global.levels_completed == 1) {
    earth_spr = spr_earth_clean1;
} else if (global.levels_completed == 0) {
    earth_spr = spr_earth_dirty;
}