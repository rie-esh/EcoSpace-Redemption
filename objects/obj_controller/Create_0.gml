// Фиксируем размер окна 1280x720
window_set_size(1280, 720);
window_set_position(100, 100);  // Центр экрана (опционально)

// Pixel perfect: GUI и surface под размер окна
display_set_gui_size(1280, 720);
surface_resize(application_surface, 1280, 720);

// Запрет resize (опционально, для demo)
window_set_fullscreen(false);
window_set_resizable(false);

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