
# Colors
autoload -U colors && colors

# Autocomplete
#zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
#autoload -Uz compinit && compinit
autoload -U compinit
compinit


# Auto correct
#setopt correctall

# History
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=$HISTSIZE

# Beep disable
unsetopt beep

# Emacs keybinds
bindkey -e

export EDITOR=vim

# Pip
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

# Prompt with VCS Info
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats '%F{6}%b%F{3}|%F{1}%a%f '
zstyle ':vcs_info:*' formats       ' on %F{magenta}%b%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
precmd () { vcs_info }

function cdf() { cd *$1*/ } 

PROMPT='
%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}${vcs_info_msg_0_}
$ '

# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias duh="du -csh"
alias l="ls -laFGh"
alias :q="echo YOU FAIL"
alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'

source ~/.server_aliases

## GIT
gd() { git diff $* | view -; }


PYTHONSTARTUP=~/.pythonrc
export PYTHONSTARTUP

PYTHONPATH='/Library/Frameworks/Python.framework/Versions/2.7/bin'
PGSQLPATH='/Library/PostgreSQL/9.0/bin'

PATH=/usr/local/bin:$PATH
PATH=$PYTHONPATH:$PATH
PATH=$PGSQLPATH:$PATH
export PATH

##source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh
source virtualenvwrapper.sh
