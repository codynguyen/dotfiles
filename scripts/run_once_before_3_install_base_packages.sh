#!/bin/sh

if command -v apt-get &> /dev/null;
then
    echo "apt"
    echo "docker"
    curl -fsSL https://get.docker.com | sudo sh
elif command -v dnf &> /dev/null;
then
    echo "dnf"
    echo "docker"
    curl -fsSL https://get.docker.com | sudo sh
elif command -v brew &> /dev/null;
then
    echo "brew"

fi
