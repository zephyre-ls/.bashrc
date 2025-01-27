# Configuration du prompt
autoload -Uz promptinit
promptinit
prompt adam1

# Prompt avec heure, utilisateur, dossier courant et état de git
export PROMPT='%F{cyan}[%*]%f %F{yellow}%n%f in %F{blue}%~%f $ '

# Historique : ignorer les doublons et partager l'historique entre sessions
setopt histignorealldups sharehistory
export HISTCONTROL=ignoredups

# Emacs keybindings, même si EDITOR est défini sur vi
bindkey -e

# Historique : conserver 1000 commandes et sauvegarder dans ~/.zsh_history
HISTSIZE=2000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Activer le système de complétion moderne
autoload -Uz compinit
compinit

# Paramètres de complétion
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Ajouter des chemins au PATH
export PATH="$PATH:/home/lduflot/.local/bin"

# Alias utiles
alias francinette='/home/lduflot/francinette/tester.sh'
alias paco='/home/lduflot/francinette/tester.sh'
alias ccw='cc -Wall -Werror -Wextra'
alias cx='chmod +x'
alias nv ='nvim'
