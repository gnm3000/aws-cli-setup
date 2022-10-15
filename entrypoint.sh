#!/bin/sh -l
mkdir /root/.aws
#echo -n "[default]\nregion=us-east-1\noutput=json" > /root/config
#echo -n "[default]\naws_access_key_id=$1\naws_secret_access_key=$2\naws_session_token=$3" > /root/credentials
#echo "CONFIG"
#cat /root/config
#echo "CREDENTIALS"
#cat /root/credentials
#ls /root/
#echo $PWD
printf "[default]
region=us-east-1
output=json" | tee -a /root/.aws/config >/dev/null
printf "[default]
aws_access_key_id=$1
aws_secret_access_key=$2
aws_session_token=$3" | tee -a /root/.aws/credentials >/dev/null
aws --version
aws s3 ls
#echo "Hello $1 $2 $3"
time=$(date)
echo "::set-output name=time::$time"

