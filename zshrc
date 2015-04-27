# start emacs
# if [ -z "$EMACS" ]; then
#    $(which emacsclient) -t
#    ret=$?
#    if [ $ret -ne 0 ]; then
#        $(which emacs) --funcall=multi-term
#    fi
#    exit
#fi
# Set emacs
if [[ $EMACS = t ]]; then
    unsetopt zle
fi
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
#source $ZSH/oh-my-zsh.sh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git osx ruby gem rake rbenv knife bundler adb brew cake nvm git-flow git-hubflow knife docker golang go vagrant heroku repo bower )#yeoman grunt)

source $ZSH/oh-my-zsh.sh

# User configuration
for f in $(find ~/.zsh.d/ -type f -name \*.sh)
do
  source $f
done

export PATH="/usr/local/bin:$HOME/bin:$HOME/.nodebrew/current/bin:/usr/local/opt/rbenv/shims/:$HOME/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$GOROOT/bin:$GOPATH/bin:$NACL_HOME:$NACL_HOME/pepper_34/toolchain/mac_pnacl/bin:/usr/local/Cellar/llvm/3.4/bin/:$DART_HOME/bin:$GOOGLE_CLOUD_HOME/bin:$HEROKU_HOME/bin:$DEPOT_TOOLS_ROOT:$COCOS_CONSOLE_ROOT:$HOME/dex2jar/:$NDK_ROOT:/Users/kazu/android-sdk/platforms/android-4/tools/"
