#!/bin/bash
set -euo pipefail

VSCODE_CM=vscode-editor-configurations

#check if the ConfigMap already exists
if oc get configmap $VSCODE_CM &> /dev/null; then
    echo "ConfigMap $VSCODE_CM already exists. Deleting it first."
    oc delete configmap $VSCODE_CM
fi  

oc create configmap $VSCODE_CM --from-file=/projects/customize-devspaces-workspace/.devspaces/extensions.json --from-file=/projects/customize-devspaces-workspace/.devspaces/settings.json --from-file=/projects/customize-devspaces-workspace/.devspaces/product.json --from-file=/projects/customize-devspaces-workspace/.devspaces/configurations.json

oc label configmap $VSCODE_CM app.kubernetes.io/part-of=che.eclipse.org

echo "VS Code ConfigMap created successfully."
 