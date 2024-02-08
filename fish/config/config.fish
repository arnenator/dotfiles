fish_add_path /opt/homebrew/opt/coreutils/libexec/gnubin
fish_add_path /opt/homebrew/opt/gnu-sed/libexec/gnubin
fish_add_path /opt/homebrew/opt/make/libexec/gnubin
fish_add_path /opt/homebrew/opt/gawk/libexec/gnubin
fish_add_path /opt/homebrew/opt/grep/libexec/gnubin
fish_add_path /opt/homebrew/opt/curl/bin

# kubernetes plugin manager
# fish_add_path ~/.krew/bin
# Rancher symlinks
# fish_add_path  ~/.rd/bin

fish_add_path /usr/local/go/bin/
fish_add_path /usr/local/bin/

if status is-interactive
    fish_add_path --prepend ~/bin
    fish_add_path --prepend ~/go/bin
    fish_add_path /opt/homebrew/bin
    eval (/opt/homebrew/bin/brew shellenv)
    jump shell fish | source

    fish_add_path '/Applications/Visual Studio Code.app/Contents/Resources/app/bin'

    fish_add_path '~/.cargo/env' # Add path to RUST cargo

    set -x EDITOR mg

    set -x LC_ALL en_US.UTF-8
    set -x LANG en_US.UTF-8
    set -x ERL_AFLAGS -kernel shell_history enabled
    set -x LSCOLORS ExGxBxDxCxEgEdxbxgxcxd

    abbr -a gu git pull --rebase --autostash
    abbr -a gup 'git pull --rebase && git push'
    abbr -a gp git push
    abbr -a gpf git push --force-with-lease

    abbr -a gprune git remote prune origin

    abbr -a gs git status
    abbr -a gsw git switch
    abbr -a gd git diff
    abbr -a ga git add
    abbr -a gap git add -p
    abbr -a gci git commit
    abbr -a gcim --set-cursor=@ git commit -m \'@\'
    abbr -a gcia git commit -a
    abbr -a gciam --set-cursor=@ git commit -a -m \'@\'

    abbr -a gco git checkout
    abbr -a gcob git checkout -b
    abbr -a gcom git checkout master
    abbr -a gl git log
    abbr -a gls git log --stat
    abbr -a glp git log -p
    abbr -a gbd git pull --prune

    abbr -a k kubectl
    abbr -a kg kubectl get
    abbr -a kgns kubectl get ns
    abbr -a kgnsf kubectl get ns -l product=forecasting
    abbr -a kga kubectl get all
    abbr -a kgc kubectl get cronjobs
    abbr -a kgd kubectl get deployments
    abbr -a kgr kubectl get replicasets
    abbr -a kgj kubectl get jobs
    abbr -a kgp kubectl get pods
    abbr -a kgpj kubectl get pippijobs
    abbr -a kgpjr kubectl get pippijobruns


    abbr -a kd kubectl describe
    abbr -a kdns kubectl describe ns
    abbr -a kdc kubectl describe cronjob
    abbr -a kdd kubectl describe deployment
    abbr -a kdr kubectl describe replicaset
    abbr -a kdj kubectl describe job
    abbr -a kdp kubectl describe pod
    abbr -a kdpj kubectl describe pippijob
    abbr -a kdpjr kubectl describe pippijobruns


    abbr -a kdel kubectl delete
    abbr -a kdelns kubectl delete ns
    abbr -a kdelc kubectl delete cronjob
    abbr -a kdeld kubectl delete deployment
    abbr -a kdelr kubectl delete replicaset
    abbr -a kdelj kubectl delete job
    abbr -a kdelp kubectl delete pod
    abbr -a kdelpj kubectl delete pippijob
    abbr -a kdelpjr kubectl delete pippijobruns


    abbr -a klogs kubectl logs
    abbr -a klogsf kubectl logs -f
    abbr -a klogscontainer kubectl logs -f -c container_name

end
