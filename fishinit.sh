read -p "$(echo -e "\e[;1m""Fisher_config Anyway?"" (Y/N): ")" yn; case "$yn" in [yY]*) echo -e "\e[33m";; *) echo -e "\e[1m""exit" && exit;; esac
echo -e "\e[m"
fish -c "curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher"
fish -c "fisher add oh-my-fish/theme-bobthefish"
fish -c "fisher add fisherman/docker-completion"
fish -c "fisher add fisherman/fzf"
fish -c "pacman -Sy fzf"
fish -c "fisher add fisherman/spin"
fish -c "fisher add fisherman/z"
fish -c "fisher add edc/bass"
fish -c "fisher add 0rax/fish-bd"
fish -c "fisher add oh-my-fish/plugin-balias"
chsh