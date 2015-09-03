import XMonad
import XMonad.Layout.NoBorders
import System.IO

main = do 
    xmonad $ defaultConfig
        {
            -- manageHook =  manageDocks <+> manageHook defaultConfig,
          --layoutHook = avoidStruts $ smartBorders $  layoutHook defaultConfig,
          layoutHook =  smartBorders $  layoutHook defaultConfig,
                             focusedBorderColor = "#FF8C00",
                             borderWidth = 2,
                             terminal = "urxvt -e bash -c 'sh /home/cglazner/bin/tmux-urxvt.sh'",
                             focusFollowsMouse = False
        }


