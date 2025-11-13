if status is-interactive
    set -g fish_greeting ''

end

if type -q wal
    cat ~/.cache/wal/sequences &
end

set -gx NPM_CONFIG_PREFIX ~/.npm-global
fish_add_path ~/.npm-global/bin

oh-my-posh init fish --config ~/.config/oh-my-posh/uew.omp.json | source
neofetch