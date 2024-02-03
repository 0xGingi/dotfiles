alias ls='ls --color=auto'
alias grep='grep --color=auto'

source /usr/share/nvm/init-nvm.sh
eval "$(starship init zsh)"

[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh
znap source marlonrichert/zsh-autocomplete
znap source dashixiong91/zsh-vscode
source ~/Repos/dashixiong91/zsh-vscode/zsh-vscode.plugin.zsh
export ZSH_CUSTOM=~/.oh-my-zsh/custom
export QT_QPA_PLATFORMTHEME=qt5ct
source ~/.oh-my-zsh/custom/plugins/zsh_codex/zsh_codex.plugin.zsh
zle -N create_completion
bindkey '^X' create_completion
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gingi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
