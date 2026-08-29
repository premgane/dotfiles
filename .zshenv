# ~/.zshenv — sourced by EVERY zsh invocation (interactive, scripts, `zsh -c`,
# and shells spawned by tools like Claude Code). Keep it minimal: env vars and
# PATH only. No aliases, no prompts, no eval of external tools.

# Rust (cargo) — must be here so non-interactive shells resolve cargo/rustc
if [ -f "$HOME/.cargo/env" ]; then
  source "$HOME/.cargo/env"
fi

# pyenv shims must be on PATH in non-interactive shells too
# (so `python`/`pip` resolve when tools spawn scripts).
# Guard: don't fail if pyenv isn't installed.
if command -v pyenv >/dev/null 2>&1; then
  export PATH="$(pyenv root)/shims:$PATH"
fi

# History
export HISTFILE=~/.histfile
export HISTSIZE=50000
export SAVEHIST=50000

# Word chars for editing (no slash, period, angle brackets, dash)
export WORDCHARS='*?_[]~=&;!#$%^(){}'

# tldr colors — https://github.com/tldr-pages/tldr-python-client
export TLDR_COLOR_BLANK="white"
export TLDR_COLOR_NAME="cyan"
export TLDR_COLOR_DESCRIPTION="white"
export TLDR_COLOR_EXAMPLE="green"
export TLDR_COLOR_COMMAND="white"
