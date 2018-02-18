bind '"\eu":"cd ..\C-m"'
alias sc='xclip -selection c'
alias gc='xclip -selection clipboard -o'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias gdb='gdb --silent'

u() { local p= i=${1:-1}; while (( i-- )); do p+=../; done; cd "$p[" && pwd; }
md () { mkdir -p "$@" && cd "$@"; }

alias set-ttl="sudo iptables -t mangle -A POSTROUTING -o wlan0 -j TTL --ttl-set 65"
alias list-iptables-rules="sudo iptables -t mangle -L POSTROUTING -v"

function ssh ()
{
 /usr/bin/ssh -t $@ "tmux attach -d || tmux new";
}

function mosh ()
{
 /usr/local/bin/mosh -6 $@ -- tmux attach -d
}

LAST_FIND_RESULTS=/tmp/last_find_results
LAST_FIND_ERRORS=/tmp/last_find_errors

function f()
{
 find . -name $1 2>$LAST_FIND_ERRORS | tee $LAST_FIND_RESULTS | grep $1 --color=always
}

function fa()
{
 find . -name '*'$1'*' 2>$LAST_FIND_ERRORS | tee $LAST_FIND_RESULTS | grep $1 --color=always
}

alias lfr="cat $LAST_FIND_RESULTS"
alias lfe="cat $LAST_FIND_ERRORS"
