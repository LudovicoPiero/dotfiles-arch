if status is-interactive
    # Commands to run in interactive sessions can go here
    alias gdl='gallery-dl --config ~/.config/gallery-dl/gallery-dl.conf'
    alias sudo='doas'
    alias n='nvim'
    alias nv='nvim'

    # Color stuff
    alias ls='exa --icons'
    alias l='exa -lbF --git --icons'
    alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale --icons'
    alias ll='exa -lbGF --git --icons'
    alias llm='exa -lbGF --git --sort=modified --icons'
    alias cat='bat --theme gruvbox-dark'
    alias grep='grep --color=auto'
    alias tree='exa --tree --icons'
    alias '..'='cd ..'
    alias '...'='cd ../..'

    # Git Aliases
    alias g='git'
    alias ga='git add'
    alias gaa='git add .'
    alias gm='git commit'

    alias gf='git fetch'
    alias gs='git status'
    alias gpl='git pull'
    alias gpsh='git push -u origin'

    # Path and stuff
    export PATH="$HOME/.bin:$PATH"
    export PATH="$HOME/.local/bin:$PATH"
    export PATH="$HOME/.cargo/bin:$PATH"
end
