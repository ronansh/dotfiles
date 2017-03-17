
source ~/antigen/antigen.zsh
export ZSH=/Users/ronan/.oh-my-zsh
export EDITOR=nvim
ZSH_THEME="muse"


antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle heroku 
antigen bundle node
antigen bundle nodenv.plugin.zsh
antigen theme agnoster
antigen apply

BULLETTRAIN_PROMPT_ORDER=(
  git
  nvm
  #context
  dir
)
BULLETTRAIN_PROMPT_CHAR='_'

PROMPT="$emoji[penguin]  > "

plugins=(git brew npm node python, zsh-nvm)

source $ZSH/oh-my-zsh.sh
 
# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
#MYSQL
alias sqlstart="mysql.server start"
alias sqlstop="mysql.server stop"

# NGINX 
alias nginxstart="sudo nginx"
alias nginxstop="sudo nginx -s stop"

#DEVOPS
alias g='git' 
alias gc='git commit'
alias gs='git status' 
alias gd='git diff' 
alias gds='git diff --stat'

#DIRECTORIES
alias gitproj='cd ~/workspace/projects/git'
alias proj='cd ~/workspace/projects' 
alias comm='cd ~/workspace/commercial'
prompt_context () { }

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

