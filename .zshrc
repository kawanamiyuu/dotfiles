# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="steeef"
#ZSH_THEME="smt"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git docker node npm yarn composer)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$(brew --prefix)/bin:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH

# ======================================================================
# .bashrc で定義していたaliasやexportの設定をコピー
# ~/.oh-my-zsh/custom/ とかにまとめるといいんだけど、管理するファイルが
# 増えると面倒なのでここに書いておく
# ======================================================================
alias ll='ls -l'
alias la='ls -la'
alias du1='du -d 1'
alias diff='\diff -b -w -B -u'

# diff
which "colordiff" > /dev/null
if [ $? -eq 0 ]; then
  alias diff='colordiff -b -w -B -u'
fi

# vi
which "vim" > /dev/null
if [ $? -eq 0 ]; then
  alias vi='vim'
fi

# emacs
# which "emacs" > /dev/null
# if [ $? -eq 0 ]; then
#   alias wq='emacs'
# fi

# vagrant
# which "vagrant" > /dev/null
# if [ $? -eq 0 ]; then
#   alias vadestroy='vagrant destroy --force; vagrant status'
#   alias vahalt='vagrant halt; vagrant status'
#   alias vahds='vagrant halt; vagrant destroy --force; vagrant status'
#   alias vaprovision='vagrant provision; vagrant status'
#   alias vassh='vagrant ssh'
#   alias vastatus='vagrant status'
#   alias vaup='vagrant up; vagrant status'
#   alias vasuspend='vagrant suspend; vagrant status'
# fi

# color setting
# export CLICOLOR=1
# export LSCOLORS=gxfxcxdxbxegedabagacad

# load zprofile
source ~/.zprofile
