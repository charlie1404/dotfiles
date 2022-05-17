setopt COMBINING_CHARS           # Combine zero-length punctuation characters (accents) with the base character.
setopt INTERACTIVE_COMMENTS      # Enable comments in interactive shell.
setopt RC_QUOTES                 # Allow 'Henry''s Garage' instead of 'Henry'\''s Garage'.
setopt LONG_LIST_JOBS            # List jobs in the long format by default.
setopt AUTO_RESUME               # Attempt to resume existing job before creating a new process.
setopt NOTIFY                    # Report status of background jobs immediately.
setopt COMPLETE_IN_WORD          # Complete from both ends of a word.
setopt ALWAYS_TO_END             # Move cursor to the end of a completed word.
setopt PATH_DIRS                 # Perform path search even on command names with slashes.
setopt AUTO_MENU                 # Show completion menu on a successive tab press.
setopt AUTO_LIST                 # Automatically list choices on ambiguous completion.
setopt AUTO_PARAM_SLASH          # If completed parameter is a directory, add a trailing slash.
setopt EXTENDED_GLOB             # Needed for file modification glob modifiers with compinit

unsetopt MENU_COMPLETE           # Do not autoselect the first completion entry.
unsetopt FLOW_CONTROL            # Disable start/stop characters in shell editor.
# unsetopt MAIL_WARNING            # Don't print a warning message if a mail file has been accessed.
unsetopt BG_NICE                 # Don't run all background jobs at a lower priority.
# unsetopt HUP                     # Don't kill jobs on shell exit.
# unsetopt CHECK_JOBS              # Don't report on jobs when shell exit.
setopt correct_all

export ZSH="$HOME/dotfiles"
export TERM="xterm-256color"
export EDITOR="nano"
export VISUAL="nano"
export LESS='-F -g -i -M -R -S -w -X -z-4'
export PATH=$PATH:$HOME/bin:$HOME/.cargo/bin:$HOME/go/bin

export LC_ALL=en_US.UTF-8
export STARSHIP_CONFIG=$ZSH/starship.toml
# export BAT_PAGER="less -g -i -R -S -w"

ZSH_CACHE_DIR="$ZSH/cache"

fpath=($ZSH/modules/zsh-completions/src $ZSH/functions $ZSH/completions $fpath)
autoload -Uz compaudit compinit
compaudit
compinit

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

source "$ZSH/alias.sh"
source "$ZSH/.zshrc.work"
# source $HOME/.cargo/env

for lib ($ZSH/lib/*.zsh); do source $lib; done

source $ZSH/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.fzf.zsh
# source "$HOME/.nvm/nvm.sh"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main pattern brackets line cursor root)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

. $ZSH/z.sh

eval "$(starship init zsh)"
