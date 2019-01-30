#!/bin/bash -ex

yum -y update
yum -y install ruby
yum -y install wget
wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install
chmod +x ./install
./install auto
service codedeploy-agent status
rm -f ./install
