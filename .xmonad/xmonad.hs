import XMonad
import XMonad.Hooks.DynamicLog

main = xmonad =<< xmobar def
    { terminal    = "alacritty"
    , modMask     = mod4Mask
    , borderWidth = 3
    , startupHook = spawn "~/.xmonad/autostart"
    }

