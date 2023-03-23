if status is-interactive
    # Commands to run in interactive sessions can go here
    alias g='git'
    alias gpl='git pull'
    alias gpsh='git push -u origin'
    alias gcm='cz c'
    alias gdl='gallery-dl --config ~/.config/gallery-dl/gallery-dl.conf'
    alias sudo='doas'
    alias nv='nvim'

    # Path and stuff
    fish_add_path -m ~/.bin/
    fish_add_path -m ~/.local/bin/

    starship init fish | source
end
