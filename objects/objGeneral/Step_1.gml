global.confirm = keyboard_check_pressed(vk_enter);
global.jump = keyboard_check_pressed(vk_space);
global.l = keyboard_check(vk_left) || keyboard_check(ord("A"));
global.r = keyboard_check(vk_right) || keyboard_check(ord("D"));
global.u = keyboard_check(vk_up) || keyboard_check(ord("W"));
global.d = keyboard_check(vk_down) || keyboard_check(ord("S"));