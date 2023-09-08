#
#	      /`·.¸
#	     /¸...¸`:·
#	 ¸.·´  ¸   `·.¸.·´)
#	: © ):´;      ¸  {
#	 `·.¸ `·  ¸.·´\`·¸)
#	     `\\´´\¸.·´
#

function fish_greeting
  echo ""
  cfonts unos -a left -f block -g "#f7768e","#7aa2f7" --transition-gradient -s
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
function romfd
  fd $argv ~/Downloads/Torrent/DataBase/
end
if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end

# ALIAS
alias ls="lsd -a --group-directories-first"
alias ll="lsd -al --color=always --group-directories-first"
alias tree="eza --color=always --icons --tree"
alias grep="rg"
alias intel_gpu_top="sudo intel_gpu_top"
alias pm="sudo pacman"
alias pmu="sudo pacman -Syu"
alias c="clear"
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias pkgrec="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias pkgli="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | nl"
alias pkgsize="expac -H M '%m\t%n' | sort -h | nl"
alias myip="curl ip.me"
alias lf=lfub
