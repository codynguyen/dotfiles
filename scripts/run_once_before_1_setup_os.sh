#!/bin/sh

if command -v apt-get &> /dev/null
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
    echo "mac. updating system"
    # xcode-select --install

    # /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # brew install --cask iterm2
    # brew install zsh
    echo "mac. updating system. done nothing."

fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
