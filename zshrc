export ZSH="/home/jast/.oh-my-zsh"

ZSH_THEME="afowler"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
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
alias t="tmux"
alias fix="sudo pacman -Suu"
alias gp="git push -u"
alias gc="git commit"
alias gf="git pull"
alias grep="grep --color=auto"
alias wetter="curl wttr.in"

export PATH="/opt/:$PATH"
export PATH="/home/jast/.local/bin:$PATH"
export LC_CTYPE=en_US.UTF-8 Example aliases

#base16shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

file="$HOME/.config/colors/gruvbox.sh"
export PATH="/opt/:$PATH"
export PATH="/home/jast/.local/bin:$PATH"
export LC_CTYPE=en_US.UTF-8
export PATH="/home/jast/.local/share/JetBrains/Toolbox/:$PATH"
if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi

gnome-keyring-daemon -r -d &>/dev/null
export SSH_AUTH_SOCK=/run/user/1000/keyring/ssh

