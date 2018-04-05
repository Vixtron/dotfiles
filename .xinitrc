#!/bin/sh

# Swing bspwm fix
export _JAVA_AWT_WM_NONREPARENTING=1

# Swing force gtk & font envi vars
export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true'

# Start bspwm
exec bspwm
