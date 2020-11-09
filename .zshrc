# P10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
  git
  asdf
  docker
  docker-compose
  kubectl
)

source $ZSH/oh-my-zsh.sh

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Unbind keys
bindkey -r '^L'

# Aliases
alias kl="kubectl"
alias kgp="kl get pods"
alias kgn="kl get nodes"
alias kx="kubectx"
alias ks="kubens"

alias p3="python3"
alias python="python3"

alias glga="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gcp="gc -m"
alias gcz="git cz"
alias gczp="git cz -p"
alias extract-audio='f() { ffmpeg -i $1 -vn -c:a copy $1.m4a };f'
alias compress-jpg='if [ ! -d processed ]; then mkdir -p processed; else echo folder exists; fi && for f in ./*.jpg; do ffmpeg -i $f -q:v 1 processed/$f; done'

function gif-mov() {
  movie=$1
  height=$(mdls -name kMDItemPixelHeight ${movie} | grep -o '[0-9]\+')
  width=$(mdls -name kMDItemPixelWidth ${movie} | grep -o '[0-9]\+')
  palette="/tmp/palette.png"
  [[ $width -gt $height ]] && scale="scale=720:-1:flags=lanczos" || scale="scale=-1:720:flags=lanczos" 
  filters="fps=10,$scale"
  echo $filters
  ffmpeg -v warning -i $1 -vf "$filters,palettegen=stats_mode=diff" -y $palette
  ffmpeg -i ${movie} -i $palette -lavfi "$filters,paletteuse=dither=bayer:bayer_scale=5:diff_mode=rectangle" -y ${movie}.gif
}

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.asdf/bin:$PATH"

# Path
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# Weird shit

# This speeds up pasting w/ autosuggest
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/bin/google-cloud-sdk/completion.zsh.inc'; fi

eval $(thefuck --alias)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
