alias af='alias-finder'
alias vim=nvim

alias eal='vim ~/.aliases.zsh'
alias erc='vim ~/.zshrc'
alias egitignore='nvim ~/.gitignore_global'
alias egitconfig='nvim ~/.gitconfig'

alias grep='grep --color'

# alias google-chrome='open -a Google\ Chrome --args --disable-web-security'
alias brewery='brew update && brew upgrade && brew cleanup'

alias show_inet="ifconfig | grep 'inet ' | grep -v 'inet 127'"
alias inet="show_inet && show_inet | pbcopy"
alias ctags="`brew --prefix`/bin/ctags"
alias spoof="spoof-mac.py"

# Boostnote
export BOOSTNOTE="~/Library/Mobile\ Documents/com~apple~CloudDocs/Bootnote"
alias bnote="cd $BOOSTNOTE"

# Kubernetes - most shortcuts are already defined by zsh plugin
alias kcsn='kcn kccc --namespace ' # kubectl config set-context $(kubectl config current-context) --namespace

alias hi=highlight
alias hil="hi -l "

alias clear_asl='sudo rm -rf /private/var/log/asl/*.asl'

alias wave='kubectl port-forward -n weave "$(kubectl get -n weave pod --selector=weave-scope-component=app -o jsonpath='{.items..metadata.name}')" 4040'

alias init_current='export CURRENT=$(date +%s)'

alias build_node4k8s='docker rmi $(docker images outdammeas/node4k8s -q) -f && init_current && docker build . -t outdammeas/node4k8s:latest && docker tag outdammeas/node4k8s:latest outdammeas/node4k8s:${CURRENT}'


# kubectl
alias kcbff='kubectl get config -n bff h365-bff -o yaml'
alias kla='kubectl logs -l  app.kubernetes.io/name=pph-svc-activity -c pph-svc-activity -n services -f'
alias klrw='kubectl logs -l  app.kubernetes.io/name=pph-svc-reward -c pph-svc-reward -n services -f'
alias klreward='klrw'
alias kluser='kubectl logs -l  app.kubernetes.io/name=pph-svc-user -c pph-svc-user -n services -f'
alias klbff='kubectl logs -l  app.kubernetes.io/name=hisg-bff -c hisg-bff -n bff -f'
alias klc='kubectl logs -l  app.kubernetes.io/name=pph-svc-challenge -c pph-svc-challenge -n services -f'
alias klfb='kubectl logs -l  app.kubernetes.io/name=pph-svc-fitbit -c pph-svc-fitbit -n services -f'
alias klg='kubectl logs -l  app.kubernetes.io/name=pph-svc-group -c pph-svc-group -n services -f'
alias klhisgbff='kubectl logs -l  app.kubernetes.io/name=hisg-bff -c hisg-bff -n bff -f'
alias klhisgwbff='kubectl logs -l  app.kubernetes.io/name=hisg-web-portal-bff -c hisg-web-portal-bff -n bff -f'
alias kln='kubectl logs -l  app.kubernetes.io/name=pph-svc-notification -c pph-svc-notification -n services -f'
alias kls='kubectl logs -l  app.kubernetes.io/name=pph-svc-survey -c pph-svc-survey -n services -f'
alias ksa='kubectl get secret -n services pph-svc-activity -o yaml'
alias ksbff='kubectl get secret -n bff h365-bff -o yaml'
alias ksc='kubectl get secret -n services pph-svc-challenge -o yaml'
alias ksfb='kubectl get secret -n services pph-svc-fitbit -o yaml'
alias ksg='kubectl get secret -n services pph-svc-group -o yaml'
alias kss='kubectl get secret -n services pph-svc-survey -o yaml'

# scrcpy
alias scrcpy_connect='adb connect 192.168.1.149:5555'

# React
alias rn_cc='watchman watch-del-all && rm -rf $TMPDIR/react-* && npm start -- --reset-cache'

# Renovate
alias rr='${PWD}/scripts/dry_run_with_debug.sh'

# VSCODE 
alias code='code-insiders'

alias ydl='youtube-dl'
alias v='vagrant'

alias esvim="vim ~/.SpaceVim.d/init.toml"

alias tp="terraform plan"
alias ta="terraform apply"
alias td="terraform destroy"
alias tw="terraform workspace"

# Open web url

alias doc_tmux="open https://github.com/gpakosz/.tmux"
