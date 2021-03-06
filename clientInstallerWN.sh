#!/usr/bin/env bash

clusterUN=$1
clusterPS=$2
clusterName=$3
wasbURI=$4
edgeNodeIP=$5

# Import the helper method module.
wget -O /tmp/HDInsightUtilities-v01.sh -q https://hdiconfigactions.blob.core.windows.net/linuxconfigactionmodulev01/HDInsightUtilities-v01.sh && source /tmp/HDInsightUtilities-v01.sh && rm -f /tmp/HDInsightUtilities-v01.sh

wget https://github.com/psf/azureARMFusion/blob/master/fusion-hdi-2.2.8-client-hdfs_2.6.6-SNAPSHOT-1548_all.deb\?raw\=true -O /tmp/hdi-client.deb

dpkg -i /tmp/hdi-client.deb
