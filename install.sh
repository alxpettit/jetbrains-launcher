#!/usr/bin/env bash

sudo mkdir -p /opt/jetbrains-launcher/
sudo cp -v *.sh /opt/jetbrains-launcher/
sudo chown -v root:root /opt/jetbrains-launcher/*.sh
sudo chmod -v 755 /opt/jetbrains-launcher/*.sh

names=( studio pycharm idea clion rubymine webstorm phpstorm goland rider datagrip dataspell )

for name in ${names[@]}; do
    echo "Installing: ${name}"
    sudo ln -sv "/opt/jetbrains-launcher/launcher.sh" "/usr/local/bin/${name}" -f
done
