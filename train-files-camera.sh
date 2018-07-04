#!/bin/bash

echo "Welcome to the training image acquisition tool for Consumabot"
echo "This script is released under GPL 3.0 license"
echo "https://github.com/arnepeine/consumabot"

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
raspistill -t $longms -tl $intervalms -o ~/train/$prefix/%d.jpg -v
sleep 1
