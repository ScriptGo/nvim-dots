-- neovide
if vim.g.neovide then
-- Font
	vim.o.guifont = "Sarasa Term SC,FiraCode Nerd Font Mono:h14"
-- Scale
	vim.g.neovide_scale_factor = 1.0
-- Padding
	vim.g.neovide_padding_top = 0
	vim.g.neovide_padding_bottom = 0
	vim.g.neovide_padding_right = 0
	vim.g.neovide_padding_left = 0

-- Transparency
	vim.g.neovide_transparency = 0.7
-- Scroll Animation Length
	vim.g.neovide_scroll_animation_length = 0.3
-- Far scroll lines
	vim.g.neovide_scroll_animation_far_lines = 1
-- Hiding the mouse when typing
    vim.g.neovide_hide_mouse_when_typing = false
-- Underline automatic scaling
    vim.g.neovide_underline_stroke_scale = 1.0
-- Theme
    vim.g.neovide_theme = 'auto'
-- Refresh Rate
    vim.g.neovide_refresh_rate = 60
-- Idle Refresh Rate
    vim.g.neovide_refresh_rate_idle = 5
-- No Idle
    vim.g.neovide_no_idle = true
-- Confirm Quit
    vim.g.neovide_confirm_quit = true
-- Fullscreen
    vim.g.neovide_fullscreen = false
-- Remember Previous Window Size
    vim.g.neovide_remember_window_size = false
-- Profiler
    vim.g.neovide_profiler = false
-- Touch Deadzone
    vim.g.neovide_touch_deadzone = 6.0
-- Touch Drag Timeout
    vim.g.neovide_touch_drag_timeout = 0.17

-- Cursor Settings
-- Animation Length
    vim.g.neovide_cursor_animation_length = 0.13
-- Animation Trail Size
    vim.g.neovide_cursor_trail_size = 0.8
-- Antialiasing
	vim.g.neovide_cursor_antialiasing = true
-- Animate in insert mode
	vim.g.neovide_cursor_animate_in_insert_mode = true
-- Animate switch to command line
	vim.g.neovide_cursor_animate_command_line = true
-- Unfocused Outline Width
	vim.g.neovide_cursor_unfocused_outline_width = 0.125
-- Cursor Particles
-- torpedo, pixiedust, sonicboom, ripple, wireframe
	vim.g.neovide_cursor_vfx_mode = "railgun"
--Particle Opacity
	vim.g.neovide_cursor_vfx_opacity = 200.0
-- Particle Lifetime
	vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
-- Particle Density
	vim.g.neovide_cursor_vfx_particle_density = 7.0
-- Particle Speed
	vim.g.neovide_cursor_vfx_particle_speed = 10.0
-- Particle Phase(Only for the railgun vfx mode)
	vim.g.neovide_cursor_vfx_particle_phase = 1.5
-- Particle Curl(Only for the railgun vfx mode)
	vim.g.neovide_cursor_vfx_particle_curl = 1.0
end
