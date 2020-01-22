export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

alias kl="kubectl"
alias kgp="kl get pods"
alias kgn="kl get nodes"
alias kx="kubectx"
alias ks="kubens"

alias p3="python3"

alias glga="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gcz="git cz"


. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export PATH="$HOME/.bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/bin/google-cloud-sdk/completion.zsh.inc'    ; fi

eval $(thefuck --alias)