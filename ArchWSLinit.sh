echo 'pacman-key initting (1/5)'
pacman-key --init;pacman-key --populate
echo 'pacman package updating... (2/5)'
pacman -Syyuu $INSTPACKAGE
echo 'yay installing... (3/5)'
wget https://github.com/koumaza/pacman-my-init/blob/master/yay-9.4.2-1-x86_64.pkg.tar.xz;pacman -U yay-9.4.2-1-x86_64.pkg.tar.xz
yay -Syyuu
echo 'fish initting... (4/5)'
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
echo 'Other Settings (5/5)'
echo -e "\e[;1m""Set Your Use Editor"
read youruseeditor
export EDITOR=$youruseeditor
wget "https://gist.github.com/koumaza/51452707aad4244e6d0ee951756bebab/raw/6b0a4f6fc96083d71f43a6a1a8c27b8ceaab7e38/useradd.sh";bash useradd.sh