# stuff for easier handling my containers

CONTAINER_USER="ubuntu"

function fzirobdevup() {
  devcontainer up --workspace-folder $HOME/setup_repos/devcontainer/$1 --dotfiles-repository=https://github.com/nspielbau/dotfiles.git --dotfiles-install-command=install.sh
  devcontainer exec --workspace-folder $HOME/setup_repos/devcontainer/$1 zsh
}

function fzirobdevnew() {
  devcontainer up --workspace-folder $HOME/setup_repos/devcontainer/$1 --dotfiles-repository=https://github.com/nspielbau/dotfiles.git --dotfiles-install-command=install.sh --remove-existing-container
  devcontainer exec --workspace-folder $HOME/setup_repos/devcontainer/$1 zsh
}

alias cddev='cd $HOME/setup_repos/devcontainer'
alias devup='devcontainer up --workspace-folder . --dotfiles-repository=https://github.com/nspielbau/dotfiles.git --dotfiles-install-command=install.sh'
alias devupnodot='devcontainer up --workspace-folder .'
alias devnew='devcontainer up --workspace-folder . --dotfiles-repository=https://github.com/nspielbau/dotfiles.git --dotfiles-install-command=install.sh --remove-existing-container'
alias devrun='devcontainer exec --workspace-folder .'
alias devsh='devcontainer exec --workspace-folder . zsh'
