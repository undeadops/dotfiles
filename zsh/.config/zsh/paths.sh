# Path Exports

export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$HOME/bin:$GOBIN:$PATH"

# Adding Krew plugins for kubectl
export PATH="${PATH}:${HOME}/.krew/bin"

export EDITOR=nvim

# Note taking app path
export NOTES_CLI_HOME="$HOME/.notes"
export NOTES_CLI_EDITOR=vim # Set your favorite editor

# Search for separate Kubeconfigs
export KUBECONFIG=$HOME/.kube/config
