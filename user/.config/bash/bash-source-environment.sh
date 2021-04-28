
### bash

# # https://wiki.archlinux.org/index.php/Bash#Shell_exits_even_if_ignoreeof_set
export IGNOREEOF='100'

# # https://wiki.archlinux.org/index.php/Environment_variables#Examples

# # https://wiki.archlinux.org/index.php/Nano#Replacing_vi_with_nano
export VISUAL='nano'
export EDITOR='nano'

### colors

# # https://askubuntu.com/questions/466198/how-do-i-change-the-color-for-directories-with-ls-in-the-console
# # dircolors --print-database

export EXA_COLORS='da=92:di=91:gm=91:gu=0:uu=0'

# # https://wiki.archlinux.org/index.php/Color_output_in_console#ls
export LS_COLORS='di=1;94'

### firefox

### clipboard paste to chromium does not work
# # https://github.com/swaywm/sway/wiki/Running-programs-natively-under-wayland#gtk3
# # https://wiki.archlinux.org/index.php/Firefox#Wayland
export MOZ_ENABLE_WAYLAND='1'

### python

# # https://docs.python.org/3/using/cmdline.html#envvar-PYTHONDONTWRITEBYTECODE
export PYTHONDONTWRITEBYTECODE='non-empty'

### git

# # https://github.com/typicode/husky#skip-all-hooks-rebase
export HUSKY_SKIP_HOOKS='1'

### qt

### prevent xwayland fullscreen glitches but windows and notifications works bad
### virtualbox does not work
# # https://github.com/swaywm/sway/wiki#disabling-client-side-qt-decorations
# # https://wiki.archlinux.org/index.php/Wayland#Qt_5
# # https://wiki.qt.io/QtWayland#Run_Qt_applications_as_Wayland_clients
export QT_QPA_PLATFORM='wayland'

# # https://wiki.archlinux.org/index.php/Qt#Configuration_of_Qt5_apps_under_environments_other_than_KDE_Plasma
# # https://wiki.archlinux.org/index.php/Uniform_look_for_Qt_and_GTK_applications#Adwaita
export QT_QPA_PLATFORMTHEME='qt5ct'

### remmina

export WLR_RDP_TLS_CERT_PATH='/-/remmina/tls.crt'
export WLR_RDP_TLS_KEY_PATH='/-/remmina/tls.key'

### remote desktop protocol

# WLR_BACKENDS='rdp'
# WLR_RDP_ADDRESS='0.0.0.0'

### telegram

# # https://github.com/telegramdesktop/tdesktop/wiki/Environment-variables

### ignore telegram warning message
# # https://wiki.archlinux.org/index.php/Telegram#GTK_dialogs_in_Telegram_Desktop
export TDESKTOP_I_KNOW_ABOUT_GTK_INCOMPATIBILITY='1'

### vaapi

### enable mpeg-4
# # https://wiki.archlinux.org/index.php/Hardware_video_acceleration#VA-API_drivers
export VAAPI_MPEG4_ENABLED='true'

### wayland

# # https://github.com/emersion/mako/issues/258
export WL_OUTPUT_SUBPIXEL_NONE='none'

### webstorm

### fix webstorm window draw
# # https://github.com/swaywm/sway/wiki/Running-programs-natively-under-wayland#java-under-xwayland
# # https://wiki.archlinux.org/index.php/Java#Gray_window,_applications_not_resizing_with_WM,_menus_immediately_closing
export _JAVA_AWT_WM_NONREPARENTING='1'
export AWT_TOOLKIT='MToolkit'

### xkb

### xkb not for sway
# export XKB_DEFAULT_LAYOUT='us,ru'
# export XKB_DEFAULT_OPTIONS='grp:caps_toggle'
