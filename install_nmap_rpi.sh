sudo apt update
sudo apt install -y nmap git vim screen
cd
git clone https://github.com/vulnersCom/nmap-vulners.git
echo "$(crontab -l; echo '0 * * * * bash /home/pi/nmap-rpi/discover_vulnerabilities.sh')" | crontab -
