#!/bin/bash

# https://github.com/stuartleeks/wsl-notify-send
#function notify-send {
#  wsl-notify-send.exe --category "$WSL_DISTRO_NAME" "$@";
#}

#alias notify-send=wsl-notify-send.exe

# Set GPG environment.
export GPG_TTY=$(tty)

# Keychain also supports GPG !
# To take advantage of GPG functionality, ensure that GNU Privacy Guard is installed and omit the --agents ssh option.

# Start keychain agents.
# https://www.funtoo.org/Keychain
#
# Agents are re-used if they already exist.
# 1. Starts SSH agent.
# 2. Starts GPG agent as well.
# 3. The GPG agent should use signing keys and NOT master keys.
#
# If you have any questions about which keys are available, run:
# gpg -K --keyid-format LONG
/usr/bin/keychain \
--dir ~/.ssh/.keychain \
--gpg2 --agents gpg,ssh \
~/.ssh/<current-ssh-key-here> \
<gpg-signing-key-1> \
<gpg-signing-key-2>

# When using ZSH
source ~/.ssh/.keychain/$HOST-sh
source ~/.ssh/.keychain/$HOST-sh-gpg

# List keys in md5 format.
echo "Keys loaded into SSH agent:"
ssh-add -l -E md5

# Print current GPG information.
# https://unix.stackexchange.com/a/467062/5626
#echo "Keys loaded into GPG agent:"
#gpg-connect-agent 'keyinfo --list' /bye



export NODE_NO_WARNINGS=1
export GOPATH=/home/wsl/go/bin
export PATH=$PATH:/home/wsl/.local/bin:$GOPATH

# Docker Desktop Windows 4.x regresses from 3.x.
# Links faulty binaries into /usr/bin from /mnt/wsl.
# Take care of business:
busted_binary=/usr/bin/docker-credential-desktop.exe
if [[ -f $busted_binary ]];
then
  echo "Docker Desktop 4.x sucks, begone busted binaries!"
  sudo rm $busted_binary
  which docker-credential-desktop.exe
fi



# Rust's vendor dependencies.
export PATH=$PATH:/home/wsl/.cargo/bin

# Use Rust/Cargo lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'



export PATH=$PATH:/home/wsl/y
source '/home/wsl/lib/azure-cli/az.completion'
