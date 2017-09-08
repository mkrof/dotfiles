# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

### Node
export NODE_PATH=/usr/lib/node_modules

### PS1
colorReset="\[\033[0m\]"
red="\[\033[0;31m\]"
green="\[\033[0;32m\]"
gray="\[\033[0;90m\]"
time12h="\T"
shortPath="\w"

export PS1=$gray$time12h$colorReset'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
    echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
    if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$green'"$(__git_ps1 " (%s)"); \
    else \
    # @5 - Changes to working tree
    echo "'$red'"$(__git_ps1 " (%s)"); \
    fi) '$colorReset$shortPath$colorReset'\$ "; \
else \
    # @2 - Prompt when not in GIT repo
    echo " '$colorReset$shortPath$colorReset'\$ "; \
fi)'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# pyenv
export PATH="/Users/36261/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Terminal colors
export CLICOLOR=1
export TERM=xterm-256color

