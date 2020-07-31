#!/bin/bash

while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -i|--ip)
    VPLEX_IP="$2"
    shift # past argument
    shift # past value
    ;;
    -u|--user)
    VPLEX_USER="$2"
    shift # past argument
    shift # past value
    ;;
    -p|--password)
    VPLEX_PASSWORD="$2"
    shift # past argument
    shift # past value
    ;;
    -cg|--cg)
    VPLEX_CG="$2"
    shift # past argument
    shift # past value
    ;;
    -stv|--storageview)
    STORAGE_VIEW="$2"
    shift # past argument
    shift # past value
    ;;
    -dd|--distributeddevice)
    DISTRIBUTED_DEVICE="$2"
    shift # past argument
    shift # past value
    ;;
    -d1|--deviceclusterleg1)
    DEVICE_CLUSTER_LEG_1="$2"
    shift # past argument
    shift # past value
    ;;
    -d2|--deviceclusterleg2)
    DEVICE_CLUSTER_LEG_2="$2"
    shift # past argument
    shift # past value
    ;;
    #--default)
    #DEFAULT=YES
    #shift # past argument
    #;;
    *)    # unknown option
    POSITIONAL+=("$1") # save it in an array for later
    shift # past argument
    ;;
esac
done

echo $VPLEX_IP $VPLEX_USER $VPLEX_PASSWORD $VPLEX_CG $STORAGE_VIEW $DISTRIBUTED_DEVICE $DEVICE_CLUSTER_LEG_1 $DEVICE_CLUSTER_LEG_2