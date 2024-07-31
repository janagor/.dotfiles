export TERMINAL=alacritty

for func in ~/dotfiles/zsh/functions/*.zsh; do
    source $func
done

source ~/dotfiles/zsh/web_pages.zsh

# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="afowler"
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode reminder

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
	git
	zsh-completions
	zsh-interactive-cd
	zsh-navigation-tools
	zsh-autosuggestions
	web-search
	zsh-syntax-highlighting
	copypath
	dirhistory
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


  ### ZNT's installer added snippet ###
  fpath=( "$fpath[@]" "$HOME/.config/znt/zsh-navigation-tools" )
  autoload n-aliases n-cd n-env n-functions n-history n-kill n-list n-list-draw n-list-input n-options n-panelize n-help
  autoload znt-usetty-wrapper znt-history-widget znt-cd-widget znt-kill-widget
  alias naliases=n-aliases ncd=n-cd nenv=n-env nfunctions=n-functions nhistory=n-history
  alias nkill=n-kill noptions=n-options npanelize=n-panelize nhelp=n-help
  zle -N znt-history-widget
  bindkey '^R' znt-history-widget
  setopt AUTO_PUSHD HIST_IGNORE_DUPS PUSHD_IGNORE_DUPS
  zstyle ':completion::complete:n-kill::bits' matcher 'r:|=** l:|=*'
  ### END ###


alias sudo='sudo '
alias sudonvim='sudo -E nvim'


#export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/"
export JAVA_HOME="/usr/lib/jvm/jdk-19"
# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=$PATH:/opt/gradle/gradle-8.7/bin

path+=/home/$USER/.cargo/bin

alias mvn="/home/$USER/opt/apache-maven-3.9.6/bin/mvn"
alias sqldeveloper="/home/$USER/sqldeveloper-20.2.0/opt/sqldeveloper/sqldeveloper/bin/sqldeveloper"
alias datamodeler="/home/$USER/datamodeler-23.1.0.087.0806/opt/datamodeler/datamodeler/bin/datamodeler"
alias rars="java -jar /home/$USER/rars.jar"
alias mars="java -jar /home/$USER/Mars.jar"
alias matlab="matlab -softwareopengl"

alias weather="curl http://wttr.in"

alias op="cd vaults/personal/"
alias ow="cd vaults/work/"
alias os="cd vaults/study/"
alias oop="xdg-open \"obsidian://new?vault=personal\""
alias oow="xdg-open \"obsidian://new?vault=work\""
alias oos="xdg-open \"obsidian://new?vault=study\""

alias ls="lsd -a"

export PYRIGHT_PYTHON_FORCE_VERSION=latest

export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export GO111MODULE="on" 

. "$HOME/.cargo/env"

export PATH="$HOME/.local/bin:$PATH"
eval "$(zoxide init zsh)"


# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f "/home/$USER/.ghcup/env" ] && . "/home/$USER/.ghcup/env" # ghcup-env

# temporary others
alias alg="open ~/learning/algorithms/Algorithms.pdf"
alias algpl="open ~/learning/algorithms/Algorytmy.pdf"
alias cormen="open ~/learning/algorithms/Introduction.to.Algorithms.4th.pdf"
alias opsys="open ~/learning/operating_systems/Operating_systems_Design_and_Implementation.pdf"

alias db="open ~/Database\ Internals.pdf"

