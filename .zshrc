export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="afowler"

plugins=(git zsh-autosuggestions copyfile dirhistory fzf jsontools)

source $ZSH/oh-my-zsh.sh

alias pdf="bash ~/.scripts/unipdf.sh && exit"
alias vsw="bash ~/.scripts/vsw.sh && exit"
alias uni="bash ~/.scripts/uni.sh && exit"
alias icat="kitten icat"
alias cd="z"

export PATH=/home/matte/.local/bin:/home/matte/src/kitty/kitty/launcher:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/matte/.dotnet/tools
export PATH=$PATH:/home/matte/.spicetify

eval "$(zoxide init zsh)"
