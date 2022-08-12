import XMonad
import XMonad.Layout.Gaps
import XMonad.Layout.Spacing
import XMonad.Hooks.DynamicLog

main = xmonad =<< xmobar def
    { terminal    = "alacritty"
    , modMask     = mod4Mask
    , borderWidth = 3
    , startupHook = spawn "~/.xmonad/autostart"
    , normalBorderColor = "#431751"
    , focusedBorderColor = "#49A7C6"
    , layoutHook = smartSpacingWithEdge 5 $ Tall 1 (3/100) (1/2)
    }

