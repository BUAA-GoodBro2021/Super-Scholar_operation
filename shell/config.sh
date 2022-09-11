ARGS=""
read -p "[INFO] The number of host is: " NUMBER
for  ((i=1; i<=$NUMBER; i+=1))
do
    read -p "[INFO] host $i ip is: " HOST_IP
    read -p "[INFO] host $i name is: " HOST_NAME
    ARGS="$ARGS $HOST_IP $HOST_NAME"
done
echo $ARGS
