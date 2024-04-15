if status is-interactive
  set fish_greeting ''
end

bind \ej accept-autosuggestion

alias ls="eza -lah --color=always --group-directories-first -F"
export QT_QPA_PLATFORMTHEME=gtk2
export GTK_THEME=Flat-Remix-GTK-Magenta-Dark
