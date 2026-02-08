#!/usr/bin/env bash
set -euo pipefail

echo "==> Running Ansible playbook setup"
if ! command -v ansible-playbook >/dev/null 2>&1; then
  echo "==> ansible-playbook not found, installing Ansible"
  sudo apt-get update
  sudo apt-get install -y ansible
fi

ansible-playbook ~/.ansible/setup.yml

echo "==> Setup complete"
