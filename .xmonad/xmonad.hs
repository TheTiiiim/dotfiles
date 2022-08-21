import XMonad
import XMonad.Layout.Gaps
import XMonad.Layout.Spacing
import XMonad.Hooks.DynamicLog
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig (additionalKeys)
import Graphics.X11.ExtraTypes.XF86

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
    } `additionalKeys` myKeys


myBar = "xmobar"

-- Key binding to toggle the gap for the bar.
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

myPP = def
    { ppCurrent = xmobarColor "#49A7C6" "" . wrap "[" "]"
    , ppTitle   = xmobarColor "white"  "" . shorten 70
    , ppLayout  = (\x -> "")
    }

myKeys =
    [ ((0, xK_Print), spawn "scrot ~/Pictures/Screenshots/%Y-%m-%d-%T-screenshot.png")
    , ((0, xF86XK_MonBrightnessUp), spawn "~/.scripts/changebrightness up")
    , ((0, xF86XK_MonBrightnessDown), spawn "~/.scripts/changebrightness down")
    , ((0, xF86XK_AudioRaiseVolume), spawn "~/.scripts/changevolume up")
    , ((0, xF86XK_AudioLowerVolume), spawn "~/.scripts/changevolume down")
    , ((0, xF86XK_AudioMute), spawn "~/.scripts/changevolume mute")
    , ((0, xF86XK_AudioMicMute), spawn "pamixer --source 2 -t")
    ]

