#!/bin/sh
# This is a convenience script based off http://emanual.robotis.com/docs/en/platform/turtlebot3/joule_setup
# You may follow along yourself if you want.

echo "Turtlebot 3 Setup"
echo "You might be promted for sudo access. The password is rsa"
echo "Removing Remove PC packages. These are not designed to run on turtlebots."
cd ~/catkin_ws/src/turtlebot3
sudo rm -r turtlebot3_description/ turtlebot3_teleop/ turtlebot3_navigation/ turtlebot3_slam/ turtlebot3_example/

echo "Installing additional packages"
sudo apt-get --assume-yes ros-kinetic-rosserial-python ros-kinetic-tf
cd ~/catkin_ws && catkin_make

echo "Adding turtlebot model to bashrc"

echo "export TURTLEBOT3_MODEL=waffle" >> ~/.bashrc

echo "Done!"
