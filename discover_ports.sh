NMAP_RPI_DIR=/home/pi/nmap-rpi
TIMESTAMP=$(date +"%Y-%m-%d-%H:%M")
OUTPUT_PATH="$NMAP_RPI_DIR/data/nmap-ports-$TIMESTAMP.txt"
IP_RANGE='192.168.0.0/24'

nmap $IP_RANGE -o $OUTPUT_PATH
