#!/usr/bin/env bash
set -euo pipefail

echo "==> Updating apt index"
sudo apt-get update

echo "==> Installing Ansible"
sudo apt-get install -y ansible

echo "==> Ansible installed"

echo "==> Running Ansible playbook setup"
ansible-playbook ~/.ansible/setup.yml

echo "==> Setup complete"
