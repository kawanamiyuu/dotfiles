# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# =========================================
# alias
# =========================================

alias ll='ls -l'
alias la='ls -la'
alias diff='diff -b -w -B'

# vim
which "vim" > /dev/null
if [ $? -eq 0 ]; then
  alias vi='vim'
fi

# emacs
which "emacs" > /dev/null
if [ $? -eq 0 ]; then
  alias wq='emacs'
fi

# Sublime Text for Mac
if [ -f /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl ]; then
  alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
fi

# vagrant
which "vagrant" > /dev/null
if [ $? -eq 0 ]; then
  alias vadestroy='vagrant destroy'
  alias vahalt='vagrant halt'
  alias vaprovision='vagrant provision'
#  alias vasandbox='vagrant sandbox'
  alias vassh='vagrant ssh'
  alias vastatus='vagrant status'
  alias vaup='vagrant up'
fi

# =========================================
# export
# =========================================

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

export PATH=/usr/local/sbin:$PATH

# ~/bin
if [ -d ~/bin ]; then
  export PATH=~/bin:$PATH
fi

# homebrew
which "brew" > /dev/null
if [ $? -eq 0 ]; then
  export PATH=$(brew --prefix)/bin:$PATH
fi
