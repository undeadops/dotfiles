# Path Exports

export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export GOOGLE_SDK="$HOME/opt/google-cloud-sdk"
export PATH="$HOME/bin:$GOBIN:$GOOGLE_SDK/bin:$PATH"

# Adding Krew plugins for kubectl
export PATH="${PATH}:${HOME}/.krew/bin"

export EDITOR=vim

# Note taking app path
export NOTES_CLI_HOME="$HOME/.notes"
export NOTES_CLI_EDITOR=vim # Set your favorite editor

# Search for separate Kubeconfigs
export KUBECONFIG=$HOME/.kube/config
