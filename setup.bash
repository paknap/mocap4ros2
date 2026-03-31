#!/bin/bash
set -e

git -C src/mocap4ros2 submodule update --init --recursive
rosdep install --from-paths src --ignore-src -r -y
colcon build
