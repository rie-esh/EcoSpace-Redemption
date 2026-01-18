
// Обнови спрайт Земли по прогрессу
if (global.levels_completed == 3) {
    earth_spr = spr_earth_clean3;
} else if (global.levels_completed >= 2) {
    earth_spr = spr_earth_clean2;
} // и т.д.