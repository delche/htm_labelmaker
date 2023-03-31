#!/bin/bash

date=`date +"%Y_%B_%d_%H_%M_%S"`
files=`ls /home/ubuntu/upload`

for file in ${files}; do
  rm -rf /home/ubuntu/kmzfile/*.kmz
  unzip /home/ubuntu/upload/$file -d /home/ubuntu/kmzfile/
  rm -f /home/ubuntu/upload/$file
done
#unzip /home/ubuntu/upload/*.zip -d /home/ubuntu/kmzfile/


#rm -f /home/ubuntu/upload/*.zip

#mv /home/ubuntu/kmzfile/*.zip /home/ubuntu/kmzfile/archive/kmzfile_${date}.kmz
