#!/bin/bash
volid=$(aws ec2 describe-volumes | jq -r '.Volumes[].VolumeId')
for i in $volid
do
sizes=$(aws ec2 describe-volumes --volume-ids $i | jq '.Volumes[].Size')
if [ $sizes -gt 1 ]
then
echo "Dont delete volume as the size is $sizes GB" 
else 
echo "Delete vol with Size $sizes GB"
aws ec2 delete-volume --volume-id $i
fi
done
