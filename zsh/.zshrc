######################################################################
# 🟣 Powerlevel10k Instant Prompt (must be near top)
######################################################################
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


######################################################################
# 🔌 Plugins and Tools
######################################################################
eval "$(zoxide init zsh)"
source <(fzf --zsh)
source /usr/share/zsh/plugins/zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
source ~/terminal-profile/powerlevel10k/powerlevel10k.zsh-theme


######################################################################
# ⌨️ Keybindings
######################################################################
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# Shift + Tab for accepting autosuggestions
bindkey "^[[Z" autosuggest-accept

# Sesh integration
zle -N t
bindkey -M emacs '\es' t
bindkey -M vicmd '\es' t
bindkey -M viins '\es' t

# Disable flow control (Ctrl-S/Ctrl-Q weirdness)
if [[ -t 0 ]]; then
  stty -ixon
fi


######################################################################
# 🎨 Style / Theme
######################################################################
export LS_COLORS="$(vivid generate catppuccin-mocha)"


######################################################################
# 📂 Environment Variables
######################################################################

# export PATH=$PATH:/nix/var/nix/profiles/default/bin
export EDITOR=nvim

# FZF config
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

_fzf_compgen_path() {
    fd --hidden --exclude .git . "$1"
}

_fzf_compgen_dir() {
    fd --type=d --hidden --exclude .git . "$1"
}


######################################################################
# 🧠 Completion System
######################################################################
autoload -Uz compinit
compinit

# Completion behavior
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
zstyle ':completion:*' menu select=long
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:*:-command-:*:*' group-order alias builtins functions commands
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' complete-options true


######################################################################
# 📜 History Settings
######################################################################
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
setopt inc_append_history


######################################################################
# ⚙️ Functions
######################################################################

# sesh fuzzy select
function t() {
    {
      exec </dev/tty
      exec <&1
      local session
      session=$(sesh list -t -c | fzf --height 40% --reverse --border-label ' sesh ' --border --prompt '⚡  ')
      zle reset-prompt > /dev/null 2>&1 || true [[ -z "$session" ]] && return
      sesh connect "$session"
    }
}

# yazi + auto cd
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

# Background launcher
launch() {
    nohup "$@" > /dev/null 2>&1 &
}


######################################################################
# 🔁 Aliases
######################################################################

# Replacements
alias ls='ls --color=auto'
alias la="ls -la"
alias cd="z"

# tmux
alias tn="tmux new-session -s"
alias ta="tmux attach -t"

# TODO list
alias fixthis="nvim ~/Documents/fixthis"
alias logpkg="pacman -Qqe | ~/.scripts/log-pkg.sh"

alias insert_blanks="~/Documents/Python/insert_blanks/insert_blanks.py"
#PDF VIEWER
alias pdf="launch papers"

######################################################################
# 🧾 Prompt Config
######################################################################
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


export PATH="$PATH:/home/scazarch/.local/bin"
