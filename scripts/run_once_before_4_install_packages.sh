#!/bin/sh

if command -v apt-get &> /dev/null;
then
    sudo apt -y install ripgrep neofetch vim fzf tree ack
elif command -v dnf &> /dev/null;
then
    sudo dnf -y install ripgrep neofetch vim fzf tree ack
elif command -v brew &> /dev/null;
then
    brew install ripgrep neofetch vim fzf tree ack
fi

