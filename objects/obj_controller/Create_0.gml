// Инициализация глобальных переменных для прогресса
global.level1_done = false;
global.level2_done = false;
global.level3_done = false;
global.levels_completed = 0;  // Общий счётчик (0-3)

// Дополнительно: счётчики для уровней (опционально)
global.cleaned_underground = 0;  // Для level1
global.drones_sent = 0;          // Для level2
global.debris_destroyed = 0;     // Для level3

// Музыка и другие глобалы 
global.music = noone;