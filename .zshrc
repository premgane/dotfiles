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
export EDITOR=mvim

alias gits="git branch -v; printf \"\n\"; gs || git status"
alias ls="ls -Fa"
alias lsl="ls -Fal"
alias sl="ls"
alias htop="sudo htop"
alias blog="subl /Users/prem/Desktop/Development/sandbox/premgane.github.io"
alias blogserve="bundle exec jekyll serve"

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
alias subl="open -a Sublime\ Text"

# Assuming we always want MacVim
# https://formulae.brew.sh/formula/macvim#default
alias vim="mvim"

# Tab should say the current pwd, not just "zsh"
settitle() { printf "\e]0;$@\a" }
dir_in_title() { settitle $PWD }
chpwd_functions=(dir_in_title)

# root prompt
[ $UID = 0 ] && export PROMPT=$'%{\e[0;31m%}[%{\e[0m%}%n@%m:%{\e[0m%}%~%{\e[0;31m%}]%{\e[0m%}%# '
# normal user prompt
[ $UID != 0 ] && export PROMPT=$'%{\e[0;36m%}[%{\e[0m%}%n@%m:%{\e[0m%}%~%{\e[0;36m%}]%{\e[0m%}%# '

# timestamp on the right
RPROMPT='[%*]'


# Java
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=${JAVA_HOME}/bin:/usr/local/sbin:$PATH

# Pyenv
PATH=$(pyenv root)/shims:$PATH
eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Ruby
PATH=/usr/local/opt/ruby/bin:$HOME/.gem/ruby/2.7.0/bin:$PATH

# https://github.com/zsh-users/zsh-syntax-highlighting
# Must always be the last line of this file
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

