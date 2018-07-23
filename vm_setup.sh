#!/bin/sh
# This is based off http://emanual.robotis.com/docs/en/platform/turtlebot3/pc_setup
# And http://emanual.robotis.com/docs/en/platform/turtlebot3/slam/#run-slam-nodes for SLAM
# It also clones the crosbot repo and the starter code repo.
echo "Setting up additional VM software"
echo "You might be promted for sudo access. The password is rsa"

echo "Cloning additional repos"
cd ~/catkin_ws/src
git clone -b 18s2 --single-branch git@robolab.cse.unsw.edu.au:addo/comp3431-rsa.git

git clone -b rsa-18s2 --single-branch git@robolab.cse.unsw.edu.au:rescue/crosbot.git

