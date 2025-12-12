# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Python
alias cr="open -a CodeRunner"
alias vs="open -a 'Visual Studio Code'"
alias p="python"
alias jl="jupyter lab"

# Zed
alias zed="/Applications/Zed.app/Contents/MacOS/cli"

# Basic command line operations
alias l="ls"
alias la="ls -a"
alias c="clear"
alias o="open"

# Tree
alias t="tree"
alias t1="tree -L1"
alias t2="tree -L2"
alias t3="tree -L3"
alias t4="tree -L4"

# Kaleidoscope
alias kd="ksdiff"

# Git
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gl="git log"
alias gb="git branch"
alias gba="git branch -a"
alias gf="git fetch"
alias gc="git checkout"
alias gr="git remote"
alias gm="git merge"
alias gp="git push"
alias gpl="git pull"

# Virtual env
sa() {
  if [ -f ".venv/bin/activate" ]; then
    source .venv/bin/activate
  else
    echo "No .venv found in current directory"
  fi
}

alias sd="deactivate"


#---------------------PROMT------------------------
# Function to show virtualenv, defaulting to (base)
virtualenv_name() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    echo "($(basename $VIRTUAL_ENV))"
  else
    echo "(base)"
  fi
}

# Show current Git branch
parse_git_branch() {
  git rev-parse --abbrev-ref HEAD 2> /dev/null | grep -v 'HEAD' || echo ''
}

# Enable prompt substitution
setopt PROMPT_SUBST

# Minimal prompt: (venv) foldername branch %
PROMPT=$'%F{cyan}%(1v.%1v .)[%n]%F{white} %F{yellow}%2c%f ${$(parse_git_branch):+"@ %F{white}%F{green}$(parse_git_branch)%F{white}%f"}\n> '

#---------------------PROMT------------------------


# Enable autosuggestions and syntax highlighting (clone the repo first)
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=$HOME/.npm-global/bin:$PATH
