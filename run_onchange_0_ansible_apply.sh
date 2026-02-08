#!/usr/bin/env bash
set -euo pipefail

echo "==> Running Ansible playbook setup"
ansible-playbook ~/.ansible/setup.yml

echo "==> Setup complete"
