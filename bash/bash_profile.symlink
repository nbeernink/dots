#!/bin/bash

#source bash-completion if it exists
[ -f /usr/local/share/bash-completion/bash_completion ] && source /usr/local/share/bash-completion/bash_completion

#source git-prompt and completion
[ -f /usr/local/etc/bash_completion.d/git-prompt.sh ] && source /usr/local/etc/bash_completion.d/git-prompt.sh
[ -f /usr/local/git/contrib/completion/git-completion.bash ]  && source /usr/local/git/contrib/completion/git-completion.bash

#prompt setup
export PS1='\[\e[01;32m\][\u@\[\e[34;1m\]osx \w\[\e[1;35m\]$(__git_ps1 "(%s)")\[\e[34;1m\]]\$\[\e[m\] '

#PS1 prompt without git completion
#export PS1='\[\e[01;32m\][\u@\[\e[34;1m\]osx \w\[\e[1;35m\]\[\e[34;1m\]]\$\[\e[m\] '

export PATH="/usr/local/bin:~/.bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

#shorten paths to max 3
export PROMPT_DIRTRIM=3

#set my favorite editor
export EDITOR='vim'

#history settings
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTTIMEFORMAT='%h %e %T '
export HISTIGNORE='ls:ll:bg:fg:history'

#colors in man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m' # end the info box
export LESS_TERMCAP_so=$'\E[01;42;30m' # begin the info box
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

#less with more colors
export LESS='-R'

#packer settings
export PACKER_LOG=1
export PACKER_LOG_PATH=packer.log

#aliases
alias pwgen="pwgen 12"
alias rm="rm -i"
alias ls="ls --color=auto"
alias ll="ls -la"
alias diff=colordiff
alias pdsh='pdsh -t 2'
alias goaccess='goaccess -p ~/.goaccessrc'

#source credentials for functions below

[ -f ~/.credentials ] && source ~/.credentials

# SpamExperts API-calls
function delivery_check() {
        curl "https://$SE_USER:$SE_PASS@$SE_HOST/cgi-bin/api?call=api_get_destination&domain=$1"
}

function set_delivery() {
        curl "https://$SE_USER:$SE_PASS@$SE_HOST/cgi-bin/api?call=api_set_destination&domain=$1&destination=$2"
}

function clear_callout_cache() {
        curl -s -k "https://$SE_USER:$SE_PASS@$SE_HOST/cgi-bin/api?call=api_clear_callout_cache&domain=$1"
}
