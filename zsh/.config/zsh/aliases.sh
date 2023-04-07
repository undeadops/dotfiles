# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"wq
alias vi="nvim"

# Terraform short cuts
alias tfplan="terraform plan -out tf.plan"
alias tfapply="terraform apply tf.plan"
alias tfinit="terraform init"


# Kubernetes Short cuts
alias kdev="kubectl --context=dev-east-1-adminRole"
alias kdev2="kubectl --context=dev-east-1-secondary-adminRole"
alias kdevutil="kubectl --context=dev-east-1-utility-adminRole"
alias ksnd="kubectl --context=sandbox-east-1-adminRole"
alias ksndutil="kubectl --context=sandbox-east-1-utility-adminRole"
alias kstg="kubectl --context=staging-east-1-adminRole"
alias kstgutil="kubectl --context=staging-east-1-utility-adminRole"
alias kprod="kubectl --context=prod-east-1-adminRole"
alias kprod2="kubectl --context=prod-east-1-secondary-adminRole"
alias kprodutil="kubectl --context=prod-east-1-utility-adminRole"

alias k9dev="k9s --context=dev-east-1-adminRole"
alias k9dev2="k9s --context=dev-east-1-secondary-adminRole"
alias k9devutil="k9s --context=dev-east-1-utility-adminRole"
alias k9snd="k9s --context=sandbox-east-1-adminRole"
alias k9sndutil="k9s --context=sandbox-east-1-utiliy-adminRole"
alias k9stg="k9s --context=staging-east-1-adminRole"
alias k9stgutil="k9s --context=staging-east-1-utility-adminRole"
alias k9prod="k9s --context=prod-east-1-adminRole"
alias k9prod2="k9s --context=prod-east-1-secondary-adminRole"
alias k9produtil="k9s --context=prod-east-1-utility-adminRole"

# Automatically expand all aliases:
# - don't forget the actual commands
# - don't confuse your pairing partner

preexec_functions=()

function expand_aliases {
  input_command=$1
  expanded_command=$2
  if [ $input_command != $expanded_command ]; then
    print -nP $PROMPT
    echo $expanded_command
  fi
}

preexec_functions+=expand_aliases
