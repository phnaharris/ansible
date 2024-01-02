#!/usr/bin/env bash

sudo pacman -Syu --noconfirm
sudo pacman -S ansible --noconfirm

ansible-playbook local.yml --ask-become-pass --ask-vault-pass
