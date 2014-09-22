---------------------------
-- Default awesome theme --
---------------------------

theme = {}

theme.font          = "Fixed 7"

--background
--
theme.bg_normal     = "#0c0c0c"
theme.bg_focus      = "#000000"
theme.bg_urgent     = theme.bg_normal
theme.bg_minimize   = "#44444455"
theme.bg_systray    = theme.bg_normal

-- foreground
--
theme.fg_normal     = "#ffffff"
theme.fg_focus      = "#00BCE7"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"


-- {{{ Borders
theme.border_width  = 0
theme.border_focus  = "#6F6F6F"
theme.border_normal = theme.bg_normal
theme.border_marked = theme.fg_urgent
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = theme.bg_normal
theme.titlebar_bg_normal = theme.bg_normal
-- theme.titlebar_[bg|fg]_[normal|focus]
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
-- theme.taglist_bg_focus = "#000000ff"

-- Display the taglist squares
theme.taglist_squares_sel   = "/usr/home/PwnyTail/.config/awesome/themes/zenburn/taglist/squarefz.png"
theme.taglist_squares_unsel = "/usr/home/PwnyTail/.config/awesome/themes/zenburn/taglist/squarez.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "/usr/local/share/awesome/themes/default/submenu.png"
theme.menu_height = 15
theme.menu_width  = 100

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"
-- {{{ Widgets
theme.fg_widget        = "#39C3FF"
theme.fg_center_widget = "#0096D7"
theme.fg_end_widget    = "#0079AD"
theme.fg_off_widget    = "#00000c"
theme.fg_netup_widget  = "#7F9F7F"
theme.fg_netdn_widget  = theme.fg_urgent
theme.bg_widget        = theme.bg_normal
theme.border_widget    = theme.bg_normal
-- }}}


-- Define the image to load
theme.titlebar_close_button_normal = "/usr/local/share/awesome/themes/default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "/usr/local/share/awesome/themes/default/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = "/usr/local/share/awesome/themes/default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "/usr/local/share/awesome/themes/default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "/usr/local/share/awesome/themes/default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "/usr/local/share/awesome/themes/default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "/usr/local/share/awesome/themes/default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "/usr/local/share/awesome/themes/default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "/usr/local/share/awesome/themes/default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "/usr/local/share/awesome/themes/default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "/usr/local/share/awesome/themes/default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "/usr/local/share/awesome/themes/default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "/usr/local/share/awesome/themes/default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "/usr/local/share/awesome/themes/default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "/usr/local/share/awesome/themes/default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "/usr/local/share/awesome/themes/default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "/usr/local/share/awesome/themes/default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "/usr/local/share/awesome/themes/default/titlebar/maximized_focus_active.png"

theme.wallpapers = {
            {"/usr/home/PwnyTail/.config/awesome/themes/oni-bg-1440x900.png"},
            {"/usr/home/PwnyTail/.config/awesome/themes/ninja_bg.png", center = true},
            {"/usr/home/PwnyTail/.config/awesome/themes/pano-bg.png", center = true},
            {"/usr/home/PwnyTail/.config/awesome/themes/300_movie_mac_linux_tux_gnu_debian_bsd_windows_1440x900.png", center = true},
            {"/usr/home/PwnyTail/.config/awesome/themes/black_hex_wallpaper_by_siege36.jpg", center = true},
            {"/usr/home/PwnyTail/.config/awesome/themes/dark-fog-forest-wallpaper_1440-900.jpg", center = true},
            {"/usr/home/PwnyTail/.config/awesome/themes/dark-tamar20_1440-900.jpg", center = true},
            {"/usr/home/PwnyTail/.config/awesome/themes/dark-forest_street.jpg", center = true},
}

theme.wallpaper = theme.wallpapers[1][8]

-- You can use your own layout icons like this:
theme.layout_fairh = "/usr/home/PwnyTail/.config/awesome/themes/layouts/fairhw.png"
theme.layout_fairv = "/usr/home/PwnyTail/.config/awesome/themes/layouts/fairvw.png"
theme.layout_floating  = "/usr/home/PwnyTail/.config/awesome/themes/layouts/floatingw.png"
theme.layout_magnifier = "/usr/home/PwnyTail/.config/awesome/themes/layouts/magnifierw.png"
theme.layout_max = "/usr/home/PwnyTail/.config/awesome/themes/layouts/maxw.png"
theme.layout_fullscreen = "/usr/home/PwnyTail/.config/awesome/themes/layouts/fullscreenw.png"
theme.layout_tilebottom = "/usr/home/PwnyTail/.config/awesome/themes/layouts/tilebottomw.png"
theme.layout_tileleft   = "/usr/home/PwnyTail/.config/awesome/themes/layouts/tileleftw.png"
theme.layout_tile = "/usr/home/PwnyTail/.config/awesome/themes/layouts/tilew.png"
theme.layout_tiletop = "/usr/home/PwnyTail/.config/awesome/themes/layouts/tiletopw.png"
theme.layout_spiral  = "/usr/home/PwnyTail/.config/awesome/themes/layouts/spiralw.png"
theme.layout_dwindle = "/usr/home/PwnyTail/.config/awesome/themes/layouts/dwindlew.png"

theme.awesome_icon = "/usr/local/share/awesome/icons/awesome16.png"

-- Define the icon theme for application icons. If not set then the icons 
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
