---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font          = "Sarasa UI SC 12"
theme.taglist_font  = "monospace 28"
theme.tasklist_font = "monospace 14"

theme.bg_normal             = "#0d1117"
theme.bg_focus              = "#15161e"
theme.bg_urgent             = "#f7768e"
theme.bg_minimize           = "#171726"
theme.prompt_bg             = "#414868"
theme.bg_systray            = theme.bg_normal
-- theme.systray_icon_spacing = 10
theme.tasklist_disable_icon = true

theme.fg_normal          = "#c0caf5"
theme.fg_focus           = "#5890f8"
theme.fg_urgent          = "#ffffff"
theme.fg_minimize        = "#ffffff"
theme.prompt_fg          = "#5890f8"
theme.tasklist_fg_focus  = "#e5c890"
theme.tasklist_fg_normal = "#626880"
theme.tasklist_bg_focus  = "#232634"
theme.tasklist_bg_normal = "#0d1117"

theme.useless_gap   = dpi(2)
theme.border_width  = dpi(2)
theme.border_normal = "#000000"
theme.border_focus  = "#7aa2f7"
theme.border_marked = "#fa7883"

-- theme for modalbind
theme.modalbind_font = "monospace 18" -- font
theme.modebox_fg = "#7aa2f7" -- foreground
theme.modebox_bg = "#0d1117" -- background
theme.modebox_border = "#e0af68" -- border color
theme.modebox_border_width = 1 -- border width

-- theme for hotkeys
theme.hotkeys_modifiers_fg = "#e0af68"
theme.hotkeys_border_color = "#7aa2f7"
theme.hotkeys_font = "monospace 13"
theme.hotkeys_description_font = "monospace 12"
theme.hotkeys_group_margin = 1

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(6)
theme.taglist_spacing = dpi(10)
theme.taglist_fg_empty = "#292c3c"
theme.taglist_fg_focus = "#8af5ff"
theme.taglist_fg_occupied = "#f2d5cf"
theme.taglist_fg_urgent = "#fa7883"
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.taglist_fg_focus
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.taglist_fg_occupied
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]
-- theme.notification_font = "monospace 18"
theme.notification_fg = "#8af5ff"
theme.notification_border_color = "#fa7883"
theme.notification_opacity = 80
-- theme.notification_margin = dpi(100)
-- theme.notification_shape = gears.shape.rounded_rect(cr, 70, 70, 10)

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path .. "default/submenu.png"
theme.menu_height       = dpi(15)
theme.menu_width        = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path .. "default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path .. "default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path .. "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path .. "default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path .. "default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active   = themes_path .. "default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active    = themes_path .. "default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path .. "default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path .. "default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active   = themes_path .. "default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active    = themes_path .. "default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path .. "default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path .. "default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active   = themes_path .. "default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active    = themes_path .. "default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path .. "default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = themes_path .. "default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = themes_path .. "default/titlebar/maximized_focus_active.png"

theme.wallpaper = "/home/einsam/t/wall/wallhaven-p93gm9_3840x2160.png"

-- You can use your own layout icons like this:
local gcolor = require("gears.color")
theme.layout_fg = "#f38ba8"
theme.layout_fairh      = gcolor.recolor_image(themes_path .. "default/layouts/fairhw.png", theme.layout_fg)
theme.layout_fairv      = gcolor.recolor_image(themes_path .. "default/layouts/fairvw.png", theme.layout_fg)
theme.layout_floating   = gcolor.recolor_image(themes_path .. "default/layouts/floatingw.png", theme.layout_fg)
theme.layout_magnifier  = gcolor.recolor_image(themes_path .. "default/layouts/magnifierw.png", theme.layout_fg)
theme.layout_max        = gcolor.recolor_image(themes_path .. "default/layouts/maxw.png", theme.layout_fg)
theme.layout_fullscreen = gcolor.recolor_image(themes_path .. "default/layouts/fullscreenw.png", theme.layout_fg)
theme.layout_tilebottom = gcolor.recolor_image(themes_path .. "default/layouts/tilebottomw.png", theme.layout_fg)
theme.layout_tileleft   = gcolor.recolor_image(themes_path .. "default/layouts/tileleftw.png", theme.layout_fg)
theme.layout_tile       = gcolor.recolor_image(themes_path .. "default/layouts/tilew.png", theme.layout_fg)
theme.layout_tiletop    = gcolor.recolor_image(themes_path .. "default/layouts/tiletopw.png", theme.layout_fg)
theme.layout_spiral     = gcolor.recolor_image(themes_path .. "default/layouts/spiralw.png", theme.layout_fg)
theme.layout_dwindle    = gcolor.recolor_image(themes_path .. "default/layouts/dwindlew.png", theme.layout_fg)
theme.layout_cornernw   = gcolor.recolor_image(themes_path .. "default/layouts/cornernww.png", theme.layout_fg)
theme.layout_cornerne   = gcolor.recolor_image(themes_path .. "default/layouts/cornernew.png", theme.layout_fg)
theme.layout_cornersw   = gcolor.recolor_image(themes_path .. "default/layouts/cornersww.png", theme.layout_fg)
theme.layout_cornerse   = gcolor.recolor_image(themes_path .. "default/layouts/cornersew.png", theme.layout_fg)

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
