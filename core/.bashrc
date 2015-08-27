# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '


alias vi="vim"
alias :e="vim"
alias ls="ls -1 --color=auto"
alias la="ls -A --color=auto"
alias ll='ls -lh --color=auto'
alias llt='ll -t | tac'
alias lll='ls -lh --color=auto | less'
alias R="R --no-save"
alias ssh="ssh -4"
alias lock="gnome-screensaver-command -l"
alias ghc="ghc -outputdir tmp"
alias gdv="GIT_EXTERNAL_DIFF=$HOME/bin/git_diff_wrapper GIT_PAGER= git diff --ext-diff"

set -o vi
set -o noclobber
export EDITOR="vim"
export HISTSIZE=2000
export HISTFILESIZE=2000

set -P


# mostly stolen from
# http://jmacaulay.net/blogs/main/527262-a-browser-history-for-the-command-line
#
# bd goes back
# bd 3 goes back 3
# fd goes forward
# fd 3 goes forward 3
alias ud="cd .."
function cd {
    if [ "$1" = "-" ]; then
        pushd > /dev/null
    elif [ -z "$1" ]; then
        pushd ~ > /dev/null
    else
        pushd "$@" > /dev/null
    fi
}
function bd {
    if [ -z $1 ]; then
        n=1
    else
        n=$1
    fi
    pushd +$n > /dev/null
}

function fd {
    if [ -z $1 ]; then
        n=0
    else
        n=$[$1-1]
    fi
    pushd -$n > /dev/null
}


#######################################################333
# local stuff ~
if [ -f .bashrc.local ]; then
    source .bashrc.local
fi
