#!/bin/bash
for i in {1..3}
do
echo "Creating Volume No: $i"
aws ec2 create-volume --volume-type gp2 --size 1 --availability-zone us-east-1a
done
