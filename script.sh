#!/bin/bash

# Atualização de pacotes e instalação 
sudo apt-get update
sudo apt-get install python3 -y
sudo apt-get install curl git zip -y

# Instalação do docker
sudo apt-get install docker.io -y
sudo systemctl enable --now docker
sudo systemctl start docker

# Instalando o docker-compose
sudo mkdir -p ~/.docker/cli-plugins/
sudo curl -SL https://github.com/docker/compose/releases/download/v2.11.2/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
sudo chmod +x ~/.docker/cli-plugins/docker-compose
cd ~/.docker/cli-plugins/
mv docker-compose /usr/local/bin/

# Instalação do gitla-runner
curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash
sudo apt-get install gitlab-runner
sudo /usr/sbin/usermod -aG docker gitlab-runner 

# Comunicação com o gitlab-runner.
sudo gitlab-runner register --url https://gitlab.com \
--non-interactive \
--url https://gitlab.com \
--token glrt-t3_kLgCEfugKGPsrzQLbsyB \
--executor shell