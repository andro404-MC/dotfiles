#
#	      /`·.¸
#	     /¸...¸`:·
#	 ¸.·´  ¸   `·.¸.·´)
#	: © ):´;      ¸  {
#	 `·.¸ `·  ¸.·´\`·¸)
#	     `\\´´\¸.·´
#

function fish_greeting
  echo -e "$(cat ~/.config/fish/greeting.txt)"
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end

# ALIAS
#alias ls="exa --icons --group-directories-first"
alias ls="lsd -a --group-directories-first"
#alias ll="exa -al --color=always --group-directories-first --icons"
alias ll="lsd -al --color=always --group-directories-first"
alias tree="exa --color=always --icons --tree"
alias grep="rg"
alias find="fd"
alias intel_gpu_top="sudo intel_gpu_top"
#alias nvi="neovide --multigrid"
alias pm="sudo pacman"
alias pmu="sudo pacman -Syu"
alias c="clear"
alias clear="clear && fish_greeting"
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 

# DEFAULT APPS
set -Ux BROWSER firefox
set -Ux EDITOR nvim
set -Ux EXPLORER pcmanfm
set -Ux TERMINAL alacritty
set -Ux TERMINALEMULATOR alacritty
set -Ux READER zathura
set -Ux VIDEO mpv
set -Ux IMAGE sxiv

set -Ux LIBVA_DRIVER_NAME i965
set -Ux LIBVA_DRI3_DISABLE 1
