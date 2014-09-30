# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

export GREP_OPTIONS='--color=auto'

# Prevent less from clearing the screen while still showing colors.
export LESS=-XR

# Set the terminal's title bar.
function titlebar() {
  echo -n $'\e]0;'"$*"$'\a'
}

# SSH auto-completion based on entries in known_hosts.
if [[ -e ~/.ssh/known_hosts ]]; then
  complete -o default -W "$(cat ~/.ssh/known_hosts | sed 's/[, ].*//' | sort | uniq | grep -v '[0-9]')" ssh scp sftp
fi

alias df="df -h"
alias vi='vim'
alias cls='clear'
alias df='df -kTh'
alias dir='dir --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias igrep='grep -i' # grep ignore case
alias ms='cd  ~/Projects/mrdrive-shop/'
alias fn='find -name '

# Finding big files or directories (for cleaning)
alias bigdirs='find . -type d -exec du {\} \; | sort -n'
alias bigfiles='find . -type f -exec du {\} \; | sort -n'
alias guilty='du --max-depth 1 . 2>/dev/null | sort -rn'

