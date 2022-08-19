import XMonad
import XMonad.Layout.Gaps
import XMonad.Layout.Spacing
import XMonad.Hooks.DynamicLog
import XMonad.Layout.NoBorders

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

myConfig =  def
    { terminal           = "alacritty"
    , modMask            = mod4Mask
    , borderWidth        = 3
    , startupHook        = spawn "~/.xmonad/autostart"
    , normalBorderColor  = "#431751"
    , focusedBorderColor = "#49A7C6"
    , layoutHook         = smartSpacingWithEdge 5 $ smartBorders $ Tall 1 (3/100) (1/2)
    , logHook            = dynamicLogWithPP myPP
    }

myBar = "xmobar"

-- Key binding to toggle the gap for the bar.
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

myPP = def
    { ppCurrent = xmobarColor "#49A7C6" "" . wrap "[" "]"
    , ppTitle   = xmobarColor "white"  "" . shorten 70
    , ppLayout  = (\x -> "")
    }

