NMAP_RPI_HOME=/home/pi/nmap-rpi
CRON_SCHEDULE_1='0 * * * *'
CRON_SCHEDULE_2='20 * * * *'
CRON_SCHEDULE_3='40 * * * *'

sudo apt update
sudo apt install -y nmap git vim screen
cd
git clone https://github.com/vulnersCom/nmap-vulners.git
mkdir "$NMAP_RPI_HOME/data"
echo "$(crontab -l; echo "$CRON_SCHEDULE_1 bash $NMAP_RPI_HOME/discover_vulnerabilities.sh")" | crontab -
echo "$(crontab -l; echo "$CRON_SCHEDULE_2 bash $NMAP_RPI_HOME/discover_ports.sh")" | crontab -
echo "$(crontab -l; echo "$CRON_SCHEDULE_3 bash $NMAP_RPI_HOME/discover_os.sh")" | crontab -
