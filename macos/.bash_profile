# Source commonalities
source ~/config/linux/.bashrc

export PATH=/usr/local/bin:$PATH
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

#Aliases
alias bp='vim ~/.bash_profile'
alias vrc='vim ~/.vim/.vimrc'

alias projects='cd ~/Projects'
alias startforum='. ~/Scripts/start_HEF_server.sh'
alias workonforum='. ~/Scripts/workonHEF.sh'

# Load command line completion of git commands
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#Lets us see the gnu man pages
alias man='_() { echo $1; man -M $(brew --prefix)/opt/coreutils/libexec/gnuman $1 1>/dev/null 2>&1;  if [ "$?" -eq 0 ]; then man -M $(brew --prefix)/opt/coreutils/libexec/gnuman $1; else man $1; fi }; _'

# added by Anaconda3 5.1.0 installer
export PATH="/anaconda3/bin:$PATH"