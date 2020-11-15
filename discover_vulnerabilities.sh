NMAP_RPI_DIR=/home/pi/nmap-rpi
TIMESTAMP=$(date +"%Y-%m-%d-%H:%M")
OUTPUT_PATH="$NMAP_RPI_DIR/data/nmap-vulnerabilities-$TIMESTAMP.txt"
nmap --script ./nmap-vulners/vulners.nse -sV 192.168.0.0/24 -o $OUTPUT_PATH
