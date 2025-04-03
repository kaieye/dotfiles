local M = {}
local home = os.getenv 'HOME'
M.bg_blurred_darker = home .. '/.config/wezterm/assets/bg-blurred-darker.png'
M.bg_blurred = home .. '/.config/wezterm/assets/bg-blurred.png'
M.bg_image = M.bg_blurred_darker
return M
