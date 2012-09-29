
# Colors
autoload -U colors && colors

alias tmux="TERM=screen-256color-bce tmux"

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
# Better history
export HISTCONTROL=erasedups
#setopt histappend

# Beep disable
unsetopt beep

# Emacs keybinds
bindkey -e

export EDITOR=vim

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

if type mvim >/dev/null 2>&1 
then
    alias vim='mvim -v'
fi

source ~/.server_aliases

## GIT
gd() { git diff $* | view -; }

insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
# esc + s
#bindkey "^[s" insert-sudo
