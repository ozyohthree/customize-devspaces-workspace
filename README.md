# customize-devspaces-workspace

- You can configure `Visual Studio Code - Open Source` editor by adding configurations to a ConfigMap. These configurations are applied to any workspace you open. Once a workspace is started, the editor checks for this ConfigMap and stores configurations to the corresponding config files. [[see documentation]](https://docs.redhat.com/en/documentation/red_hat_openshift_dev_spaces/3.26/html/administration_guide/configuring-visual-studio-code#editor-configurations-for-microsoft-visual-studio-code)
- This repo automates the process of creating the ConfigMap

### To customize VSCode Run `create-vscode-config-cm.sh` (Either from Task Manager or manually on Terminal) 

1. Update [configurations.json](/.devspaces/configurations.json), [extensions.json](/.devspaces/extensions.json), [product.json](/.devspaces/product.json) and [settings.json](/.devspaces/settings.json) with your custom preferences
2. Run task `create-vscode-configmap` to create a configmap that customizes all your workspace.
3. Restart or Start your workspace(s).


### To add .bashrc customizations Run `create-bashrc-cm.sh` (Either from Task Manager or manually on Terminal) 

1. Append [bashrc-cm.yaml](/.devspaces/bashrc-cm.yaml) with your `.bashrc` customizations, below `# User specific environment and startup programs` line. Ensure to indent properly.
2. Run task `create-bashrc-configmap` to create a configmap that creates a new `.bashrc` file and mounts it.
3. ALERT: This will restart all your workspaces.