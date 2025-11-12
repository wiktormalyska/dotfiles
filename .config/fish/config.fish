if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q wal
    cat ~/.cache/wal/sequences &
end

set -gx NPM_CONFIG_PREFIX ~/.npm-global
fish_add_path ~/.npm-global/bin