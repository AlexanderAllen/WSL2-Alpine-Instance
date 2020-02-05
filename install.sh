# https://medium.com/@callback.insanity/nuke-and-reinstall-a-wsl-distribution-75f7a4adcdad
#
# Must be running these commands as root, for example (from cmd.exe):
# wsl --distribution Alpine --user root
WSL_USER="wsl"

# Set password for root
passwd

# Install sudo package
apk add sudo

# sudo visudo
echo "Make sure to visudo /etc/sudoers"

# add sudo group and add default non-root user to sudo group
addgroup sudo
usermod -aG sudo $WSL_USER
cat /etc/group | grep sudo

# Create password for default user
passwd $WSL_USER


# https://medium.com/@callback.insanity/successfully-connect-alpine-wsl-2-to-docker-desktop-2-2-620e135340df
# Make sure you're not running this from a Windows mount.
cd /tmp

# Install pre-requisites
apk add ca-certificates wget bash vim

# Install https://github.com/sgerrand/alpine-pkg-glibc.
# Docker Desktop needs glibc in order to create Unix socket proxy.

sudo wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.30-r0/glibc-2.30-r0.apk
apk add glibc-2.30-r0.apk

# Install Docker CLI and Docker Compose
apk add docker-cli docker-compose
