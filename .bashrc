# Historique : conserver 1000 commandes et sauvegarder dans ~/.zsh_history
HISTSIZE=2000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt hist_ignore_dups       # Ignorer les doublons dans l'historique
setopt hist_find_no_dups      # Ne pas ajouter de doublons dans l'historique


# Alias utiles
alias francinette='/home/lduflot/francinette/tester.sh'
alias paco='/home/lduflot/francinette/tester.sh'
alias ccw='cc -Wall -Werror -Wextra'
alias cx='chmod +x'
alias nv ='nvim'
