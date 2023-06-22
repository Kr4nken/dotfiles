clear
set fish_greeting
colorscript --random
starship init fish | source
alias ls="exa --long --group --no-time --no-user --git --all --icons"
alias cp="cp -i"
alias df="df -h"
alias free="free -m"
alias wlan="nmtui"
alias tree="exa --tree"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias pstree="pstree -T -p"
alias calc="bc -q"
alias cat="bat --paging=never"
alias du="dust"
alias find="fd"
alias top="gtop"
alias crawl="~/repos/crawl/crawl-ref/source/./crawl"

function randbg 
	feh --bg-fill /usr/share/backgrounds/$(exa /usr/share/backgrounds | sort -R | tail -1)
end

function fixsz
	sed -i "s/  size: 9.0/  size: 6.0/g" ~/.alacritty.yml
end
