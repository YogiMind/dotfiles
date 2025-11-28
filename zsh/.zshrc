# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Plugins
eval "$(zoxide init zsh)"
source <(fzf --zsh)

# Style
export LS_COLORS="$(vivid generate catppuccin-mocha)"


autoload -Uz compinit
compinit

# Enable advanced completion system
#export LS_COLORS="di=34:fi=0:ln=35:pi=33:so=32:ex=31:bd=34;1:cd=34;1:or=31;1:mi=31;1"

# zstyle ':completion:*' completer _extensions _complete 
# 
# zstyle ':completion:*' use-cache on
# zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
# 
# zstyle ':completion:*' menu select=long
# 
# zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
# 
# zstyle ':completion:*' group-name ''
# zstyle ':completion:*:*:-command-:*:*' group-order alias builtins functions commands
# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# 
# zstyle ':completion:*' complete-options true

# Ensure case-insensitive matching (optional)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# === Completion behavior tweaks ===

# Enable case-insensitive matching
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Use cache for faster completion
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"

# Group and color the completion menu
zstyle ':completion:*' menu select=long
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:*:-command-:*:*' group-order alias builtins functions commands

# LS_COLORS support in completion menu
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Smarter option completion
zstyle ':completion:*' complete-options true


# source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions
# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/terminal-profile/powerlevel10k/powerlevel10k.zsh-theme
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh


# Sources
#source /opt/ros/humble/setup.zsh
#source ~/Documents/workspace/ros/turtlebot4_ws/install/setup.zsh
#source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.zsh
#source /home/scazarch/.local/share/lscolors.sh
#source  /home/linuxbrew/.linuxbrew/share/zsh/site-functions
#source ~/completion.zsh

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
setopt inc_append_history

bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# export PATH=$PATH:/nix/var/nix/profiles/default/bin

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Sesh
function t() {
    {
    exec </dev/tty
    exec <&1
    local session
    session=$(sesh list -t -c | fzf --height 40% --reverse --border-label ' sesh ' --border --prompt '⚡  ')
    zle reset-prompt > /dev/null 2>&1 || true [[ -z "$session" ]] && return
    sesh connect $session
  }
}

function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

# Launch application outside terminal
launch() {
    nohup "$@" > /dev/null 2>&1 &
}


export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

_fzf_compgen_path() {
    fd --hidden --exclude .git . "$1"
}

_fzf_compgen_dir() {
    fd --type=d --hidden --exclude .git . "$1"
}

if [[ -t 0 ]]; then
          stty -ixon
fi

zle -N t
bindkey -M emacs '\es' t
bindkey -M vicmd '\es' t
bindkey -M viins '\es' t

# Set Shift + Tab to accept the current autosuggestion
bindkey "^[[Z" autosuggest-accept  # Shift + Tab for accepting autosuggestions

# Aliases
# alias eza='nix run github:eza-community/eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'
alias ls='ls --color=auto'
alias la="ls -la"
alias cd="z"
alias tn="tmux new-session -s"
alias ta="tmux attach -t"

### Application starter
# alias intellij="nohup ~/idea-IC-222.4345.14/bin/idea.sh &>/dev/null &"
# alias fox="firefox &> /dev/null &"
# alias mars="java -jar ~/Documents/mars/Mars.jar &>/dev/null &"

### Destination shortcuts
alias yr2="cd ~/university/year2"
alias pp="cd ~/Documents/workspace/pp-lab"
alias digi="cd ~/university/year2/Digital\ design"
alias dsl="cd ~/university/year2/DSL"
alias robot35='sshpass -p "turtlebot4" ssh ubuntu@192.168.50.35'
alias robot250='sshpass -p "turtlebot4" ssh ubuntu@192.168.50.250'
alias gulliview='sshpass -p "Chalmers" ssh gulliview@192.168.50.205'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
