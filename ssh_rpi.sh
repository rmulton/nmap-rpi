RPI_MAC_ADDR='aa:aa:aa:aa:aa:aa'
RPI_IP=$(arp -a | grep $RPI_MAC_ADDR | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}')
PI_USERNAME='pi'
ssh $PI_USERNAME@$RPI_IP
