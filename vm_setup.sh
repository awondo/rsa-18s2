#!/bin/sh
# This is based off http://emanual.robotis.com/docs/en/platform/turtlebot3/pc_setup
# And http://emanual.robotis.com/docs/en/platform/turtlebot3/slam/#run-slam-nodes for SLAM
# It also clones the crosbot repo and the starter code repo.
echo "Setting up additional VM software"
echo "You might be promted for sudo access. The password is rsa"

echo "Cloning additional repos"
cd ~/catkin_ws/src
git clone -b 18s2 --single-branch http://robolab.cse.unsw.edu.au:4443/comp3431-rsa/comp3431-rsa.git
git clone -b rsa-18s2 --single-branch http://robolab.cse.unsw.edu.au:4443/rescue/crosbot.git

echo "Download new packages"
sudo apt-get update
sudo apt-get --assume-yes install libnewmat10-dev

echo "Attempting to build new packages"
cd ~/catkin_ws && catkin_make

echo "Installing SLAM cartographer package"
sudo apt-get --assume-yes install ros-kinetic-cartographer ros-kinetic-cartographer-ros ros-kinetic-cartographer-ros-msgs ros-kinetic-cartographer-rviz

echo "Adding turtlebot model to bashrc"
echo "export TURTLEBOT3_MODEL=waffle" >> ~/.bashrc

# Yeah typing this gets annoying
echo 'alias turtlebot-rviz="rosrun rviz rviz -d `rospack find turtlebot3_description`/rviz/model.rviz" ' >> ~/.bashrc

echo "Done!"
