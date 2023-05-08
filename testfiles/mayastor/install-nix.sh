#!/bin/bash
set -ex

if ! command -v nix &> /dev/null
then
        sudo install -d -m755 -o $(id -u) -g $(id -g) /nix
        curl -L https://nixos.org/nix/install | sh

        echo ". ${HOME}/.nix-profile/etc/profile.d/nix.sh" >> $HOME/.bashrc
        source $HOME/.bashrc
fi
