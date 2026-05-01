#!/bin/bash
set -euo pipefail

oc apply -f .devspaces/bashrc-cm.yaml 

echo "bashrc ConfigMap created successfully."