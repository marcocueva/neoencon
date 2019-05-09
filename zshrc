export TERM="xterm-256color"
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

#edit 20190311
 export EDITOR="nvim"
 #export EDITOR="vim"
 export USE_EDITOR=$EDITOR
 export VISUAL=$EDITOR

# Filesystem
alias ..='cd ..'            # Go up one directory
alias ...='cd ../..'        # Go up two directories
alias ....='cd ../../..'    # And for good measure
alias ls='ls --color=auto'  # gimmie colors
alias l='ls -lah --color=auto'   # Long view, show hidden
alias la='ls -AF --color=auto'   # Compact view, show hidden
alias ll='ls -lFh --color=auto'  # Long view, no hidden

alias logoff='i3-msg exit'
alias cl='clear'
alias ghs='ghostscript'

alias -s tex=nvim
alias -s config=nvim
alias -s html=w3m
alias -s org=w3m
alias  you='youtube-dl'

alias sVim='sudo -E vim' # Load vim env. on sudo
alias nVim='sudo -E nvim'
alias sudo='sudo '
alias emacs='emacs -nw'
alias vim='vimx'
alias gpaste='/usr/libexec/gpaste/gpaste-ui'

# GIT ALIASES
alias g=git
alias ga='git add'
alias gs='git status'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gl='git pull'
alias gp='git push'
alias gsta='git status -sb'
alias gsd='git svn dcommit'
alias gsr='git svn rebase'
alias gst='git stash'
alias gsa='git stash apply'
alias gr='git stash && git svn rebase && git svn dcommit && git stash pop' # git refresh
alias gd='git diff | $GIT_EDITOR -'
alias gmv='git mv'
alias gho='$(git remote -v 2> /dev/null | grep github | sed -e "s/.*git\:\/\/\([a-z]\.\)*/\1/" -e "s/\.git.*//g" -e "s/.*@\(.*\)$/\1/g" | tr ":" "/" | tr -d "\011" | sed -e "s/^/open http:\/\//g" | uniq)'

# HG ALIASES
alias hgst='hg status'
alias hgd='hg diff | $GIT_EDITOR -'
alias hgo='hg outgoing'

extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)        tar xjf $1        ;;
            *.tar.gz)         tar xzf $1        ;;
            *.bz2)            bunzip2 $1        ;;
            *.rar)            unrar x $1        ;;
            *.gz)             gunzip $1         ;;
            *.tar)            tar xf $1         ;;
            *.tbz2)           tar xjf $1        ;;
            *.tgz)            tar xzf $1        ;;
            *.zip)            unzip $1          ;;
            *.Z)              uncompress $1     ;;
            *.7z)             7zr e $1          ;;
            *)                echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
# load tilix prompt
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
#Prevent CVS files/directories from being completed:

zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'
zstyle ':completion:*:cd:*' ignored-patterns '(*/)#CVS'
#Fuzzy matching of completions for when you mistype them:

zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

#Ignore completion functions for commands you don’t have:

zstyle ':completion:*:functions' ignored-patterns '_*'

#Powerline-prompt
. /home/marco/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

#Midnight Commander
alias mc='/usr/lib/mc/mc-wrapper.sh'
alias mc='LD_PRELOAD=/usr/lib/libtrash.so.3.3 mc'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

#Vim Mode
bindkey -v

#Keybindings
typeset -g -A key
bindkey '^?' backward-delete-char
bindkey '^[[5~' up-line-or-history
bindkey '^[[3~' delete-char
bindkey '^[[6~' down-line-or-history
bindkey '^[[A' up-line-or-search
bindkey '^[[D' backward-char
bindkey '^[[B' down-line-or-search
bindkey '^[[C' forward-char
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line


#Command completion
autoload -Uz compinit
compinit
#autocompletion with arrow keys
zstyle ':completion:*' menu select

setopt COMPLETE_ALIASES
setopt correctall

#History search
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

#source /usr/share/nvm/init-nvm.sh
export PATH=$PATH:~/.yarn/bin

[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null
export PATH="$PATH:$HOME/cleanup/bin"
