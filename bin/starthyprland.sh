#!/bin/sh

cd ~

export _JAVA_AWT_WM_NONREPARENTING=1
export XCURSOR_SIZE=24
export MOZ_ENABLE_WAYLAND=1
export BEMENU_OPTS="--tb '#2f383e' --tf '#83c092' --fb '#4b565c' --ff '#d3c6aa' --nb '#2f383e' --nf '#d3c6aa' --hb '#83c092' --hf '#2f383e' --fn 'JetBrainsMono Nerd Font 14'"

exec Hyprland
