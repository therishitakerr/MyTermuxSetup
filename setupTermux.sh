#!/data/data/com.termux/files/usr/bin/bash

mkdir /data/data/com.termux/files/home/scripts
sed -i '/# allow-external-apps = true/c\allow-external-apps = true' /data/data/com.termux/files/home/.termux/termux.properties

pkg upgrade -y
pkg install mediainfo ffmpeg mpv vim wget -y
pip install --upgrade yt-dlp

echo 'HOMEDIR="/data/data/com.termux/files/home"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias updateytdlp="pip install --upgrade yt-dlp"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias gotodownloads="cd /data/data/com.termux/files/home/storage/downloads"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias editalias="vim /data/data/com.termux/files/usr/etc/bash.bashrc"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias video1080p="yt-dlp -i --add-metadata --embed-thumbnail --embed-subs --sub-lang en -f 'bestaudio+bestvideo[height=1080]'"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias video720p="yt-dlp -i --add-metadata --embed-thumbnail --embed-subs --sub-lang en -f 'bestaudio+bestvideo[height=720]'"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias video480p="yt-dlp -i --add-metadata --embed-thumbnail --embed-subs --sub-lang en -f 'bestaudio+bestvideo[height=480]'"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo 'alias getaudio="yt-dlp -i --add-metadata --embed-thumbnail -x"' >> /data/data/com.termux/files/usr/etc/bash.bashrc
