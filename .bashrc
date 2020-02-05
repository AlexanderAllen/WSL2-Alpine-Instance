
# Add timestamp and remove PII from PS1
export PS1="\[\033[36m\]\D{%Y-%m-%d-%I:%M%p}\[\033[00m\] \e[96m\u@$WSL_DISTRO_NAME\e[0m:\[\033[93m\]\w\[\033[00m\]$ "

# SSH agent for github
# https://unix.stackexchange.com/questions/48863/ssh-add-complains-could-not-open-a-connection-to-your-authentication-agent/48868
# https://stackoverflow.com/questions/44211396/is-there-a-ssh-add-linux-alpine-one-liner
eval "$(ssh-agent)"
cat ~/.ssh/id_rsa | ssh-add -
