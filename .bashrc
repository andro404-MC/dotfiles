#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"

export LIBVA_DRI3_DISABLE=1
export QT_STYLE_OVERRIDE=gtk2
export PATH="~/.local/bin/:~/go/bin:$PATH"
