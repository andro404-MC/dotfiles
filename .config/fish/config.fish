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
function keyb
  xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'
end
function clean
  yay -Sc
  pm -Rns $(pacman -Qtdq)
end
function boost
  killall polybar picom
end
function restore
  sh ~/.config/polybar/launch.sh
  picom --config ~/.config/picom/picom.conf -b
end
if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end

# ALIAS
alias ls="lsd -a --group-directories-first"
alias ll="lsd -al --color=always --group-directories-first"
alias tree="exa --color=always --icons --tree"
alias grep="rg"
alias intel_gpu_top="sudo intel_gpu_top"
alias pm="sudo pacman"
alias pmu="sudo pacman -Syu"
alias c="clear"
alias clear="clear && fish_greeting"
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias recpkg="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias allpkg="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | nl"
alias sizepkg="expac -H M '%m\t%n' | sort -h | nl"
alias neofetch="fastfetch"
alias myip="curl ip.me"

# DEFAULT APPS
set -Ux BROWSER firefox
set -Ux EDITOR nvim
set -Ux EXPLORER pcmanfm
set -Ux TERMINAL alacritty
set -Ux READER zathura
set -Ux VIDEO mpv
set -Ux IMAGE sxiv

set -Ux LIBVA_DRI3_DISABLE 1
set -Ux QT_STYLE_OVERRIDE Adwaita-Dark
