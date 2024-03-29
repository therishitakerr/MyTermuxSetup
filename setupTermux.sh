#!/data/data/com.termux/files/usr/bin/bash

pkg upgrade -y
pkg install ncdu termux-api which cronie tree at termux-services neofetch atomicparsley attr man tor tealdeer mediainfo ffmpeg mpv vim wget python-pip megatools megacmd openssh -y
pip install --upgrade yt-dlp

mkdir /data/data/com.termux/files/home/scripts
wget -P /data/data/com.termux/files/home/scripts 'https://raw.githubusercontent.com/therishitakerr/VideosWithESubs/main/VideosWithESubs.sh'
wget -P /data/data/com.termux/files/home/scripts 'https://raw.githubusercontent.com/therishitakerr/Remove-Songs-by-Duration/main/LessThanTwoMinutes.sh'
wget -P /data/data/com.termux/files/home/scripts 'https://raw.githubusercontent.com/therishitakerr/Group-Songs-By-Album/main/ArrangeMusic.sh'
wget -P /data/data/com.termux/files/home/scripts 'https://raw.githubusercontent.com/therishitakerr/ExtractSubtitles/main/ExtractSubs.sh'

chmod +x /data/data/com.termux/files/home/scripts/*

sed -i '/# allow-external-apps = true/c\allow-external-apps = true' /data/data/com.termux/files/home/.termux/termux.properties
termux-setup-storage

echo 'HOMEDIR="/data/data/com.termux/files/home"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias updateytdlp="pip install --upgrade yt-dlp"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias gotodownloads="cd /data/data/com.termux/files/home/storage/downloads"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias editalias="vim /data/data/com.termux/files/usr/etc/bash.bashrc"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias video1080p="yt-dlp -i --add-metadata --embed-thumbnail --embed-subs --sub-langs all -S res:1080"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias video720p="yt-dlp -i --add-metadata --embed-thumbnail --embed-subs --sub-langs all -S res:720"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias video480p="yt-dlp -i --add-metadata --embed-thumbnail --embed-subs --sub-langs all -S res:480"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias getaudio="yt-dlp -i --add-metadata --embed-thumbnail -x"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias example="f() { curl cheat.sh/"$1"; };f"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias example="cheat"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'cheat() { clear && curl cheat.sh/"$1" ; }' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias fromtor="yt-dlp -i --add-metadata --embed-thumbnail --embed-subs --sub-langs all --proxy socks5://localhost:9050 -S res:720"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo "alias torus='tor --ExitNodes "{us}"'" >> /data/data/com.termux/files/usr/etc/bash.bashrc
