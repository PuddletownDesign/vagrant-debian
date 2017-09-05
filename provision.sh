#!/bin/bash

sudo apt-get update
sudo apt-get install zsh vim software-properties-common fonts-inconsolata zsh curl tree git nodejs -y

mkdir Config
cd Config
git clone https://github.com/PuddletownDesign/Git
cd Git && git checkout linux
./install.sh
cd ../

wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh


git clone https://github.com/PuddletownDesign/ZSH
cd ZSH && git checkout linux
./install.sh

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sudo chsh -s /bin/zsh vagrant
zsh
