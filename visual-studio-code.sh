# Dependencies required to get Visual Studio Code working inside VSL.
# Original post for WSL 1 https://medium.com/@callback.insanity/visual-studio-code-wsl-running-php-intellisense-from-alpine-linux-on-windows-10-78e8a990f1cc

# VSC remote requirements
# https://code.visualstudio.com/docs/remote/linux#_remote-host-container-wsl-linux-prerequisites

 sudo apk add libgcc libstdc++
 
 # Development dependencies
 sudo apk add php7 php7-json php7-pecl-xdebug git php7-tokenizer
 
 
