export ZSH="/home/jast/.oh-my-zsh"
autoload -U colors && colors
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort name
zstyle ':completion:*' ignore-parents pwd
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '+' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 4 numeric
zstyle ':completion:*' menu select=long
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' use-compctl true
zstyle :compinstall filename '/home/jast/.zshrc'

ZLE_PROMPT_INDENT=0
ZLE_RPROMPT_INDENT=-2

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
setopt appendhistory autocd beep nomatch
unsetopt extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install

#Powerline
function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

export TERM="xterm-256color"
# enable color support of ls and also add handy aliases                                              
if [ -x /usr/bin/dircolors ]; then                                                                   
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"            
    alias ls='ls --color=auto'                                                                       
    alias dir='dir --color=auto'                                                                    
    alias vdir='vdir --color=auto'                                                                  
    alias grep='grep --color=auto'                                                                  
    alias fgrep='fgrep --color=auto'                                                                
    alias egrep='egrep --color=auto'                                                                
fi       

#Plugins
plugins=(
    vi-mode
    zsh-syntax-highlighting
    zsh-autosuggestions
    )

source $ZSH/oh-my-zsh.sh

#Aliases

alias v="nvim -S ~/.vimrc"
alias vi="sudo nvim"         
alias h="history|less +G"    
alias cd..="cd .."            
alias cd...="cd ../.."         
alias iconf="cd ~/.config/i3/"  
alias conf="cd ~/.config/"  
alias ff="locate " 
alias sudo='sudo '       
alias sn="systemctl hibernate"
alias ll='ls -alF --color=auto'                                                                                  
alias l='ls -lFgG --color=auto'                                                                                  
alias la='ls -ACF --color=auto'                                                                          
alias update="sudo pacman -Syu"                                                                     
alias remove="sudo pacman -Rsn"                                                                  
alias search="pacman -Ss" 
alias wtf="man"
alias p="zathura"
alias vimcast="cd /media/Data_Backup/Data/vimcasts"
alias t="tmux"
alias fix="sudo pacman -Suu"
alias gp="git push origin master"
alias gc="git commit"
alias gf="git pull"
alias uni="cd /home/jast/Documents/Uni/Vorlesungen/Semester4" 
alias book="cd /home/jast/Documents/Books/Studium/Semester4"
alias grep="grep --color=auto"

export PATH="/opt/:$PATH"
export PATH="/home/jast/.local/bin:$PATH"
export LC_CTYPE=en_US.UTF-8
export PATH="/home/jast/.local/share/JetBrains/Toolbox/:$PATH"

# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh

#base16shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

#if [ -n "$DISPLAY" ]; then
#  xset b off
#fi

file="$HOME/.config/colors/gruvbox.sh"

PATH="/home/jast/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/jast/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/jast/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/jast/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/jast/perl5"; export PERL_MM_OPT;
