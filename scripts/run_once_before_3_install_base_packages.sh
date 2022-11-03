#!/bin/sh

echo "docker"
curl -fsSL https://get.docker.com -o get-docker.sh | sudo sh

if command -v apt &> /dev/null;
then
    echo "apt"
elif command -v dnf &> /dev/null;
then
    echo "dnf"
elif command -v brew &> /dev/null;
then
    echo "brew"
fi
