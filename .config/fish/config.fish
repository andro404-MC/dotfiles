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
  cfonts "#!" -a left -f block -g "#f7768e","#7aa2f7" --transition-gradient -s
end
function keyb
  xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'
end
function clean
  yay -Sc
  pm -Rns $(pacman -Qtdq)
end
function boost
  killall picom
end
function restore
  picom --config ~/.config/picom/picom.conf -b &
  xrandr -s 1366x768 &
  dwall -s tokyo &
end
function romfd
  find ~/Downloads/Torrent/DataBase/ -type f | fzf | awk '{print $1}' | xargs -r qbittorrent
end
if status is-interactive
    starship init fish | source
end

export $(cat ~/.env | xargs)

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
alias lf="clear && lfub"
alias docs=~/scripts/docs.sh
