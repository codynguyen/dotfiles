{{ if eq .chezmoi.os "linux" -}}
{{ if (and (eq .chezmoi.os "linux") (eq .chezmoi.osRelease.id "fedora")) }}
#!/bin/sh
sudo dnf -y install ripgrep neofetch vim 

# Keybase
sudo yum install https://prerelease.keybase.io/keybase_amd64.rpm
run_keybase

# Docker
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo systemctl start docker

{{ else if eq .chezmoi.os "darwin" -}}
#!/bin/sh
brew install ripgrep
{{ end -}}
