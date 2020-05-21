# -*- mode:sh; -*-
###############################################################################
#              __ ___  _           __  __      __ _________  _   _
#             | _/ _ \| |__       |  \/  |_   |_ |__  / ___|| | | |
#             | | | | | '_ \ _____| |\/| | | | | | / /\___ \| |_| |
#             | | |_| | | | |_____| |  | | |_| | |/ /_ ___) |  _  |
#             | |\___/|_| |_|     |_|  |_|\__, | /____|____/|_| |_|
#             |__|                        |___/__|
#
###############################################################################

# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export GOPATH=$HOME/gopath
export FLYPATH=$HOME/Repos/concourse/
export NEO4J_HOME=$HOME/neo4j-community-4.0.0/bin
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.6.jdk/Contents/Home"
export PATH=$PATH:$FLYPATH
export PATH=$PATH:$HOME/bin/
export PATH=$PATH:$HOME/google-cloud-sdk/bin
export PATH=$PATH:$HOME/Execs/fly
export PATH=$PATH:$HOME/Execs/
export PATH=$PATH:$HOME/opt/anaconda3/bin
export PATH=/usr/local/tflint/bin:$PATH
export PATH=$NEO4J_HOME:$PATH
export PATH=$JAVA_HOME/java/bin:$PATH
export PATH=$HOME/.gem:$PATH
export PATH=/usr/local/opt/libpq/bin:$PATH
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=$HOME/.gem/ruby/2.7.0/bin:$PATH
export PATH=$PATH:$GOPATH/bin


source $HOME/.fonts/*.sh
# ZSH Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Awesome Patched Fonts
POWERLEVEL9K_MODE='awesome-patched'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins+=(zsh-autosuggestions)
plugins+=(agnelantony)


# Load Oh-My-Zsh
source $ZSH/oh-my-zsh.sh


# Load Aliases
source ~/.alias
# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/google-cloud-sdk/path.zsh.inc' ]; then . '$HOME/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '$HOME/google-cloud-sdk/completion.zsh.inc' ]; then . '$HOME/google-cloud-sdk/completion.zsh.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

