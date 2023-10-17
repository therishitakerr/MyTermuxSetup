#!/data/data/com.termux/files/usr/bin/bash

mkdir /data/data/com.termux/files/home/scripts

git clone https://github.com/therishitakerr/Group-Songs-By-Album
cp ./Group-Songs-By-Album/ArrangeMusic.sh /data/data/com.termux/files/home/scripts/

git clone https://github.com/therishitakerr/Remove-Songs-by-Duration
cp ./Remove-Songs-by-Duration/LessThanTwoMinutes.sh /data/data/com.termux/files/home/scripts/

git clone https://github.com/therishitakerr/VideosWithESubs
cp ./VideosWithESubs/script.sh /data/data/com.termux/files/home/scripts/

chmod +x /data/data/com.termux/files/home/scripts/*

sed -i '/# allow-external-apps = true/c\allow-external-apps = true' /data/data/com.termux/files/home/.termux/termux.properties
termux-setup-storage

pkg upgrade -y
pkg install cronie tree at termux-services neofetch atomicparsley attr man tor tealdeer mediainfo ffmpeg mpv vim wget python-pip megatools megacmd openssh-sftp-server openssh -y
pip install --upgrade yt-dlp

echo 'HOMEDIR="/data/data/com.termux/files/home"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias updateytdlp="pip install --upgrade yt-dlp"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias gotodownloads="cd /data/data/com.termux/files/home/storage/downloads"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias editalias="vim /data/data/com.termux/files/usr/etc/bash.bashrc"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias video1080p="yt-dlp -i --add-metadata --embed-thumbnail --embed-subs --sub-langs all -f 'bestaudio+bestvideo[height=1080]'"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias video720p="yt-dlp -i --add-metadata --embed-thumbnail --embed-subs --sub-langs all -f 'bestaudio+bestvideo[height=720]'"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias video480p="yt-dlp -i --add-metadata --embed-thumbnail --embed-subs --sub-langs all -f 'bestaudio+bestvideo[height=480]'"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias getaudio="yt-dlp -i --add-metadata --embed-thumbnail -x"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias example="f() { curl cheat.sh/"$1"; };f"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias example="cheat"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'cheat() { clear && curl cheat.sh/"$1" ; }' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias fromtor="yt-dlp --proxy socks5://localhost:9050"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias fromtorbrowser="yt-dlp --proxy socks5://localhost:9150"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
