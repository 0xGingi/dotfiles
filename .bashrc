#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

eval "$(starship init bash)"
uwufetch

export SHELL_MOMMYS_LITLE="boy"

source ~/shell-mommy/shell-mommy.sh
#export PROMPT_COMMAND="mommy \\$\\(exit \$?\\); $PROMPT_COMMAND"


# pnpm
export PNPM_HOME="/home/gingi/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Created by `pipx` on 2023-08-15 18:22:38
export PATH="$PATH:/home/gingi/.local/bin"
