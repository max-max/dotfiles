export BASH_CONF="bash_profile"
alias ls='ls -la -G'
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/local/bin/
export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
shopt -s histappend
HISTCONTROL=ignoredups:ignorespace
shopt -s histappend
shopt -s checkwinsize
alias less="less -N"
alias code=/Applications/VSCodium.app/Contents/Resources/app/bin/codium
alias dockerrmi='docker image rm -f $(docker images -q)'
alias dockercrm="docker container rm -f $(docker container ls -aq)"
alias bbb="brew update && brew upgrade && brew upgrade --cask"
PROMPT_COMMAND='history -a'
HISTSIZE=100000
HISTFILESIZE=100000
export PATH="/usr/local/opt/helm@2/bin:$PATH"
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="[\D{%F %T}] \u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
alias p='python3'
