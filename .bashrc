export GOPATH=/Users/prem/go
export PATH=$PATH:/Users/prem/Desktop/Development/Android/platform-tools:$GOPATH/bin:/Applications/Postgres.app/Contents/Versions/9.3/bin
export UIMA_HOME=/Users/prem/Desktop/Development/uima/apache-uima
export CLICOLOR=1

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

# Requires: https://github.com/nvbn/thefuck
eval $(thefuck --alias wups)

# https://github.com/mroth/scmpuff
eval "$(scmpuff init -s)"

# Assuming it's not Sublime Text 2
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# Display one column with matches in tab-completion
bind "set completion-display-width 1"

# Autocomplete case insensitive
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
bind "set completion-map-case on"

# Prettier symlinks
bind "set mark-symlinked-directories on"

# Tab should say the current pwd, not just "bash"
if [[ "$TERM_PROGRAM" == "Apple_Terminal" ]] && [ -z "$INSIDE_EMACS" ]; then
    update_terminal_cwd() {
        # Identify the directory using a "file:" scheme URL,
        # including the host name to disambiguate local vs.
        # remote connections. Percent-escape spaces.
        local SEARCH=' '
        local REPLACE='%20'
        local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
        printf '\e]7;%s\a' "$PWD_URL"
    }
fi

PROMPT_COMMAND='update_terminal_cwd; echo -ne "\033]0; ${PWD##*/}\007"'

# Git TAB-completion
# Requires https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
# git-completion source: https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Java env vars
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=${JAVA_HOME}/bin:$PATH


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
