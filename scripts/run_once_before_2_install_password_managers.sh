#!/bin/sh

if command -v apt &> /dev/null;
then
    echo "apt install lastpass-cli"
    sudo apt -y install lastpass-cli
elif command -v dnf &> /dev/null;
then
    echo "dnf install lastpass-cli"
    sudo dnf -y install lastpass-cli
elif command -v brew &> /dev/null;
then
    echo "brew install lastpass-cli"
    brew install lastpass-cli
fi

echo "lpass login"
lpass login cody.haind@gmail.com