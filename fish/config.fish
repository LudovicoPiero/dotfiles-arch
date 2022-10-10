if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias g='git'
alias gpl='git pull'
alias gpsh='git push -u origin'
alias gcm='cz c'
alias gdl='gallery-dl --config ~/.config/gallery-dl/gallery-dl.conf'
alias hx='helix'
alias sudo='doas'
starship init fish | source
fish_add_path /home/ludovico/.spicetify
