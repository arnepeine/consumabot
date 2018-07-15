#!/bin/bash
#This script collects pictures from the Raspberry Pi camera and puts them into folders for NN training
echo "Welcome to the training tool for Consumabot"
echo "This script is released under GPL 3.0 license"
echo "Please select your desired action:"
echo "----------------------------------"
echo "1 - Train bot for new items"
echo "2 - Sync with training server"
echo "3 - Train models and sync back"
echo "What's your choice?"
read choice

if [ "$choice" == "1" ]
then



echo "How long do we want to train? (in seconds)"
read length

echo "How long should we wait between two pictures?"
read interval

echo "We currently have trained the model on the following categories:"
echo "-------------"
ls -dl ~/train/*/


echo "On what element do we want to train (please be exact with the description)"
read prefix
sudo mkdir -p ~/train/$prefix
sudo chmod -v 777 ~/train/$prefix
echo "Starting on $prefix"
sleep 1

longms=$(($length*1000)) 
intervalms=$(($interval*1000))
raspistill -t $longms -tl $intervalms -o ~/train/$prefix/%d.jpg -v -awb auto -sh 100
sleep 10

else
echo "Synchronizing training folders"
rsync -avz -e 'ssh' ~/train/ root@94.16.119.125:~/train/ 
fi
