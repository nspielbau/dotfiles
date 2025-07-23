# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.zsh_custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel10k/powerlevel10k"

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

source ~/.shellrc
[ -z $PROFILE_IS_SOURCED ] && source $HOME/.profile

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
