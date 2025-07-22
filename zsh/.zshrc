# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.zsh_custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"

if [ ! -e ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-pipx ]; then
  git clone https://github.com/thuandt/zsh-pipx ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-pipx
fi

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ubuntu docker taskwarrior zsh-pipx)

# For using bash completion
# You still have to source each completion file individually!!!
autoload -U bashcompinit && bashcompinit

# User configuration

if [ -d $ZSH ]; then
  DISABLE_AUTO_UPDATE="true"
  source $ZSH/oh-my-zsh.sh
else
  echo "Performing initial setup of oh-my-zsh"
  git clone --depth 1 https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#source ~/.shellrc
#if [ -e $HOME/.local/bin/rob_folders_source.sh ]; then
#  source $HOME/.local/bin/rob_folders_source.sh
#elif [ -e /usr/local/bin/rob_folders_source.sh ]; then
#  source /usr/local/bin/rob_folders_source.sh
#fi
