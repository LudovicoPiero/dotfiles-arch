if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_add_path -m ~/.bin/
    alias sudo='doas'
    alias nv='nvim'
end
