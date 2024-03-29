# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/Library/Python/3.7/bin:$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH=/Users/mircopaccusse/.oh-my-zsh
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="bullet-train"
#ZSH_THEME="agnoster"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="fox"
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
#source '/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh'
plugins=(git osx python ssh-agent screen pylint pep8 npm node git-flow brew powerline)
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
# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mircopaccusse/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/mircopaccusse/Downloads/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/mircopaccusse/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/mircopaccusse/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/go/bin/go:/usr/local/opt/gettext/bin:/usr/bin/:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/bin:$PATH"
eval "$(pyenv init -)"
fpath+=~/.zfunc
compinit
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
#export PROMPT="$PROMPT"$ "==> "
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
export PATH="/usr/local/bin:/usr/bin:$PATH"
alias ctags='/usr/local/bin/ctags'
alias rvm-prompt=$HOME/.rvm/bin/rvm-prompt
alias obsidian='cd ~/Library/Mobile\ Documents/iCloud\~md\~obsidian/Documents/on\ the\ road/'

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line
export PATH="/usr/local/opt/bzip2/bin:$HOME/.poetry/env:$PATH"
export GO111MODULE=on

export LDFLAGS="/usr/local/opt/bzip2/bin:$PATH"
export TERM=xterm-256color
