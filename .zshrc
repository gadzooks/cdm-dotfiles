# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/akarwande/.oh-my-zsh"

export PAGER='/usr/bin/less -iR'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="eastwood"
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

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
source /Users/akarwande/.oh-my-zsh/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# bindkey '^[OA' history-substring-search-up
# bindkey '^[OB' history-substring-search-down

plugins=(
  git
  zsh-completions
  zsh-autosuggestions
  copyfile
  dirhistory
  history
  jsontools
  macos
  # fzf
  # fzf-zsh-plugin
  colored-man-pages
  vi-mode
  zsh-interactive-cd
  # bgnotify not working and slows down each command
  # jira
  z
  jsontools

  # must be last one 
  zsh-syntax-highlighting
  zsh-history-substring-search
)

# autoload -U compinit && compinit

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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH=$HOME/homebrew/Cellar:$PATH
export PATH=$HOME/homebrew/bin:$PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

export EDITOR='vim'

[ -f ~/enhancd/init.sh ] && source ~/enhancd/init.sh

export PATH="/Users/akarwande/homebrew/opt/maven@3.5/bin:$PATH"
export MAVEN_HOME="/Users/akarwande/homebrew/opt/maven@3.5/bin:$PATH"
export PATH=$PATH:$MAVEN_HOME/bin
export PATH="/Users/akarwande/homebrew/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)

# Specify your defaults in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=~/Applications --caskroom=/usr/local/Caskroom"

export FZF_BASE=/Users/akarwande/homebrew/Cellar/fzf/0.28.0
# run /Users/akarwande/homebrew/Cellar/fzf/0.28.0/install

# show file preview while searching vis ctrl-T on command line
# export FZF_DEFAULT_OPTS='--height=70% --preview="cat {}" --preview-window=right:60%:wrap'
# export FZF_DEFAULT_COMMAND='rg --files'
# export FZF_CTRL_T_COMMAND='$FZF_DEFAULT_COMMAND'


# autoload -Uz compinit bashcompinit
# compinit
# bashcompinit

# source ~/.bash_completion.d/compleat_setup

###         LOAD THIS AT THE VERY END
###         LOAD THIS AT THE VERY END
###         LOAD THIS AT THE VERY END
source $ZSH/oh-my-zsh.sh
# override aliases set by oh-my-zsh
[ -f ~/.alias ] && source ~/.alias
###         LOAD THIS AT THE VERY END
###         LOAD THIS AT THE VERY END
###         LOAD THIS AT THE VERY END

export LSCOLORS=ExFxBxDxCxegedabagacad

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /Users/akarwande/homebrew/bin/terraform terraform
compinit
bashcompinit
# source ~/.bash_completion.d/compleat_setup
