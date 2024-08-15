#!/data/data/com.termux/files/usr/bin/bash

# Update and install packages
pkg update -y
pkg upgrade -y
pkg install -y ncdu termux-api which cronie tree termux-services neofetch atomicparsley attr man tor tealdeer mediainfo ffmpeg mpv vim wget python-pip megatools megacmd openssh

# Upgrade yt-dlp
pip3 install --upgrade yt-dlp

# Create scripts directory and download scripts
SCRIPT_DIR="/data/data/com.termux/files/home/scripts"
mkdir -p "$SCRIPT_DIR"
wget -P "$SCRIPT_DIR" 'https://raw.githubusercontent.com/therishitakerr/VideosWithESubs/main/VideosWithESubs.sh'
wget -P "$SCRIPT_DIR" 'https://raw.githubusercontent.com/therishitakerr/Remove-Songs-by-Duration/main/LessThanTwoMinutes.sh'
wget -P "$SCRIPT_DIR" 'https://raw.githubusercontent.com/therishitakerr/Group-Songs-By-Album/main/ArrangeMusic.sh'
wget -P "$SCRIPT_DIR" 'https://raw.githubusercontent.com/therishitakerr/ExtractSubtitles/main/ExtractSubs.sh'

# Make scripts executable
chmod +x "$SCRIPT_DIR"/*

# Update Termux properties
TERMUX_PROPERTIES="/data/data/com.termux/files/home/.termux/termux.properties"
sed -i '/# allow-external-apps = true/c\allow-external-apps = true' "$TERMUX_PROPERTIES"

# Append aliases to bash.bashrc
BASHRC="/data/data/com.termux/files/usr/etc/bash.bashrc"
{
  echo 'HOMEDIR="/data/data/com.termux/files/home"'
  echo 'alias updateytdlp="pip install --upgrade yt-dlp"'
  echo 'alias gotodownloads="cd /data/data/com.termux/files/home/storage/downloads"'
  echo 'alias editalias="vim /data/data/com.termux/files/usr/etc/bash.bashrc"'
  echo 'alias video1080p="yt-dlp -i --add-metadata --embed-thumbnail --embed-subs --sub-langs all -S res:1080"'
  echo 'alias video720p="yt-dlp -i --add-metadata --embed-thumbnail --embed-subs --sub-langs all -S res:720"'
  echo 'alias video480p="yt-dlp -i --add-metadata --embed-thumbnail --embed-subs --sub-langs all -S res:480"'
  echo 'alias getaudio="yt-dlp -i --add-metadata --embed-thumbnail -x"'
  echo 'alias fromtor="yt-dlp -i --add-metadata --embed-thumbnail --embed-subs --sub-langs all --proxy socks5://localhost:9050 -S res:720"'
} >> "$BASHRC"

# Setup storage
termux-setup-storage
