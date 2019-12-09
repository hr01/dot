echo 'pacman-key initting (1/5)'
pacman-key --init;pacman-key --populate
echo 'pacman package updating... (2/5)'
vim /etc/pacman.d/mirrorlist
pacman -Syyuu $INSTPACKAGE
echo 'yay installing... (3/5)'
wget https://github.com/koumaza/pacman-my-init/blob/master/yay-9.4.2-1-x86_64.pkg.tar.xz;pacman -U yay-9.4.2-1-x86_64.pkg.tar.xz
yay -Syyuu
echo 'fish initting... (4/5)'
wget https://raw.githubusercontent.com/hr01/dot/master/fishinit.sh
bash fishinit.sh
rm fishinit.sh
echo 'Other Settings (5/5)'
echo -e "\e[;1m""Set Your Use Editor"
read youruseeditor
export EDITOR=$youruseeditor
wget "https://gist.github.com/koumaza/51452707aad4244e6d0ee951756bebab/raw/6b0a4f6fc96083d71f43a6a1a8c27b8ceaab7e38/useradd.sh";bash useradd.sh