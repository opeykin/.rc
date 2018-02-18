bind '"\eu":"cd ..\C-m"'
alias sc='xclip -selection c'
alias gc='xclip -selection clipboard -o'

alias gdb='gdb --silent'

up() { local p= i=${1:-1}; while (( i-- )); do p+=../; done; cd "$p[" && pwd; }
md () { mkdir -p "$@" && cd "$@"; }

alias set-ttl="sudo iptables -t mangle -A POSTROUTING -o wlan0 -j TTL --ttl-set 65"
alias list-iptables-rules="sudo iptables -t mangle -L POSTROUTING -v"


