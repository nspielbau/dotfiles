#!/usr/bin/env bash
set -ex

rm -rf $HOME/.zshrc $HOME/.bashrc $HOME/.profile

mkdir -p $HOME/.config

ln -sf ${PWD}/zsh/.zshrc ${HOME}

ln -sf ${PWD}/nvim ${HOME}/.config

ln -sf ${PWD}/git ${HOME}/.config

ln -sf ${PWD}/tmux/.tmux.conf ${HOME}

ln -sf ${PWD}/lazygit/config.yml ${HOME}/.config/lazygit/config.yml

ln -sf ${PWD}/robot_folders/robot_folders.yaml ${HOME}/.config/robot_folders.yaml

ln -sf ${PWD}/shell/.bashrc ${HOME}
ln -sf ${PWD}/shell/.bash_profile ${HOME}
ln -sf ${PWD}/shell/.profile ${HOME}
ln -sf ${PWD}/shell/.profile_plugins ${HOME}
ln -sf ${PWD}/shell/.shellrc ${HOME}
ln -sf ${PWD}/shell/.zprofile ${HOME}

#mkdir -p $HOME/.local/bin
#ln -sf ${PWD}/scripts/* ${HOME}/.local/bin
