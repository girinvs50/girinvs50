#!/bin/bash
#Modifying script to create 4 EBS volumes
for i in {1..4}
do
echo "Creating Volume No: $i"
aws ec2 create-volume --volume-type gp2 --size 1 --availability-zone us-east-1a
done
