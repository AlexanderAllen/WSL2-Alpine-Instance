
# Add timestamp and remove PII from PS1
export PS1="\[\033[36m\]\D{%Y-%m-%d-%I:%M%p}\[\033[00m\] \e[96m\u@$WSL_DISTRO_NAME\e[0m:\[\033[93m\]\w\[\033[00m\]$ "
