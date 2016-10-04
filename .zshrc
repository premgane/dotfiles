# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '/Users/prem/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

## zsh bindkeys

# by default: export WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'
# we take out the slash, period, angle brackets, dash here.
export WORDCHARS='*?_[]~=&;!#$%^(){}'

## end zsh bindkeys

export CLICOLOR=1
export EDITOR=vim


alias gits="git branch -v; printf \"\n\"; gs || git status"
alias ls="ls -Fa"
alias lsl="ls -Fal"
alias sl="ls"

# https://github.com/tldr-pages/tldr-python-client
export TLDR_COLOR_BLANK="white"
export TLDR_COLOR_NAME="cyan"
export TLDR_COLOR_DESCRIPTION="white"
export TLDR_COLOR_EXAMPLE="green"
export TLDR_COLOR_COMMAND="white"

# https://github.com/nvbn/thefuck
eval $(thefuck --alias wups)

# https://github.com/mroth/scmpuff
eval "$(scmpuff init -s)"

# Assuming it's not Sublime Text 2
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# Tab should say the current pwd, not just "zsh"
settitle() { printf "\e]0;$@\a" }
dir_in_title() { settitle $PWD }
chpwd_functions=(dir_in_title)

# root prompt
[ $UID = 0 ] && export PROMPT=$'%{\e[0;31m%}[%{\e[0m%}%n:%{\e[0m%}%~%{\e[0;31m%}]%{\e[0m%}%# '
# normal user prompt
[ $UID != 0 ] && export PROMPT=$'%{\e[0;36m%}[%{\e[0m%}%n:%{\e[0m%}%~%{\e[0;36m%}]%{\e[0m%}%# '

# timestamp on the right
RPROMPT='[%*]'


# Java
export JAVA_HOME=$(/usr/libexec/java_home)

export PATH=${JAVA_HOME}/bin:/usr/local/sbin:$PATH

# https://github.com/zsh-users/zsh-syntax-highlighting
# Must always be the last line of this file
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
