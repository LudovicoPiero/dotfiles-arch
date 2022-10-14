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
alias delcache='sudo paccache -rk3; yay -Sc --aur --noconfirm'
alias update='export TMPFILE="$(mktemp)"; \
    sudo true; \
    rate-mirrors --save=$TMPFILE arch --max-delay=21600 \
      && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup \
      && sudo mv $TMPFILE /etc/pacman.d/mirrorlist \
      && delcache \
      && yay -Syyu --noconfirm'


starship init fish | source
fish_add_path /home/ludovico/.spicetify
