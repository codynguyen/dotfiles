#!/bin/sh

if command -v apt &> /dev/null
then
    echo "apt found. updating system"
    sudo apt update && sudo apt -y upgrade
    sudo apt -y install zsh
    echo "changing shell to zsh"
    chsh -s $(which zsh)
elif command -v dnf &> /dev/null
then
    echo "dnf found. updating system"
    sudo dnf -y up --refresh
    sudo dnf -y install zsh
    echo "changing shell to zsh"
    chsh -s $(which zsh)
elif command -v xcode-select &> /dev/null
then
    # echo "mac. updating system"
    # xcode-select --install

    # /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # brew install --cask iterm2
    # brew install zsh
fi
