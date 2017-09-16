# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

# Add MacPorts bin directories on Mac.
if [ "$(uname)" == "Darwin" ]; then
    PATH="$PATH:/opt/local/bin:/opt/local/sbin"
fi

export GOPATH=$HOME/go

PATH="$PATH:$HOME/bin:$GOPATH/bin"

export PATH

# Set pager and options.
#
# -R: Output ANSI color escape sequences in raw form
# -X: Disable termcap initialization and deinitialization strings (so pager
#     display won't be cleared from screen on exit)
export PAGER="less"
export LESS=-RX

# GPG configuration
export GPG_TTY=$(tty)
export GPGKEY=838AA558

# Directories in which to search for Lynx config files (excluding .lynxrc,
# which must always be in the home directory)
export LYNX_CFG_PATH=~/.lynx:/etc/lynx:/etc

if [ -f ~/.lynx/lynx.cfg ]; then
    export LYNX_CFG=~/.lynx/lynx.cfg
fi

