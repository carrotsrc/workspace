#i
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -f /etc/profile.d/bash-completion.sh ]] && source /etc/profile.d/bash-completion.sh
alias ls='ls --color=auto'
alias night='sudo shutdown -h 75'

# shortcuts
alias cdlib='cd ~/library'
alias cddev='cd ~/development'
alias cdweb='cd ~/development/web'
alias cddwn='cd ~/downloads'
alias cddubos='cd ~/development/dubos'
alias cdc='cd ~/development/c'
alias cdr='cd ~/development/r/'
alias cdpy='cd ~/development/python'
alias cdrust='cd ~/development/rust/'
alias cdloki='cd ~/development/c/loki'
alias cdcrs='cd ~/development/c/research'
alias cdrack='cd ~/development/c/rackoonio'
alias cdusrc='cd /usr/src/linux/'
alias cduinc='cd /usr/include/'
alias cdclones='cd ~/development/clones/'
alias cdoxide='cd ~/development/rust/rackoonIOxide'


# quick programs
alias mysqlr='mysql -u root -p'
alias vgmem='valgrind --tool=memcheck'
alias vgmemf='valgrind --tool=memcheck --leak-check=full'

# object dump alias
alias odumpi='objdump -GDMintel'
alias odump='objdump -GD'
alias fdump='objdump -M i8086 -M addr16 --adjust-vma=0x7c00 -D'
alias odump16='objdump -D -b binary -mi386 -Maddr16,data16'

# networking
alias httpd='sudo /etc/init.d/apache2'
alias mysqld='sudo /etc/init.d/mysql'
alias wlan='sudo /etc/init.d/net.wlan0'
alias wlan1='sudo ifconfig wlan1'
alias dhcpcd='sudo dhcpcd'
alias hapd="sudo /etc/init.d/hostapd"
alias dsvr="sudo /etc/init.d/dhcpd"
alias iw1="sudo iw dev wlan1"
alias iw0="sudo iw dev wlan0"
alias wlan0='sudo ifconfig wlan0'

# portage
alias uemergev='sudo emerge --ask --update --changed-use --deep --with-bdeps=y @world'
alias uemerge='sudo emerge --update --quiet --changed-use --deep --with-bdeps=y @world'
alias semerge='sudo emerge --sync'
alias iemerge='sudo emerge -a'
alias demerge='sudo emerge --unmerge'

alias clearcg='sudo rm /tmp/cachegrind.out*'
alias mixer='alsamixer'

# lines
alias lcnt="find . -name '*.php' | xargs wc -l"
alias lcntia="find \( -name '*.php' -o -name '*.strap' -o -name '*.js' \) | xargs wc -l"
alias lcntc="find \( -name '*.c' -o -name '*.h' \) | xargs wc -l"
alias lcntm="( find ./ -name '*.php' -print0 | xargs -0 cat ) | wc -l"


alias reboot='sudo reboot'

# quick mounts
alias msdb='sudo mount /dev/sdb1 /mnt/user/usb'
alias umsdb='sudo umount /mnt/user/usb'
alias cdusb='cd /mnt/user/usb'

# git
alias gitcom='git log --pretty=format:'%h' | wc -l'
alias gcomtot="git log --pretty=format:'%h' | wc -l"
alias gcm='git commit -m'
alias gau='git update-index --assume-unchanged'
alias gna='git update-index --no-assume-unchanged'

# quick find
alias findf='find ./ -type f -name'
alias findd='find ./ -type d -name'

# Kernel stuff
alias tailc='clear tail -n 20 current'
alias findcfg='find / -type f -name '._cfg0*' 2>/dev/null'


alias gvimw="gvim -c 'cd .'"
alias dbgcc='~/development/c/ext/gcc/bin/bin/gcc'


# MIDI stuff
alias lsmidi='aconnect -i'
alias seqdump='aseqdump -p 20'

export CKERN=3.10.17-gentoo

#go stuff
export GOROOT=/usr/local/go
export GOPATH=$HOME/development/go
export PATH=$PATH:$GOPATH/bin

#Nim stuff
export NIMPATH=~/development/clones/Nim/
export PATH=$PATH:$NIMPATH/bin

# gcc cross-compiler
export XCTARGET=i586-elf
export XCPREFIX=~/development/xgcc
export XCBIN=~/development/xgcc/bin

alias xas="$XCBIN/$XCTARGET-as"
alias xgcc="$XCBIN/$XCTARGET-gcc"
alias xnm="$XCBIN/$XCTARGET-nm"
alias xobjdump="$XCBIN/$XCTARGET-objdump"
alias norandom="setarch \$(uname -m) -RL bash"

alias docphp="php ~/development/phpdoc/bin/phpdoc run -c"


# set wine netflix export
W=~/netflix/winebin
export WINEVERPATH=$W 
export PATH=$W/bin:$PATH  
export WINESERVER=$W/bin/wineserver  
export WINELOADER=$W/bin/wine  
export WINEDLLPATH=$W/lib/wine/fakedlls  
export LD_LIBRARY_PATH="$W/lib:$LD_LIBRARY_PATH" 
export TZPATH="$HOME/development/web/lim"

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

setxkbmap gb
export PATH=$PATH:~/scripts:~/development/tool:$XCPREFIX/bin

