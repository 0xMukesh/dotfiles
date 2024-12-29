if status is-interactive
    # Commands to run in interactive sessions can go here
end

# pnpm
set -gx PNPM_HOME "/home/mukesh/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

function auto_nvm_use
    if test -f .nvmrc
        # Switch to the Node version specified in .nvmrc
        nvm use (string trim (cat .nvmrc))
    end
end

auto_nvm_use

set -U fish_user_paths /usr/local/go/bin $fish_user_paths
set -gx PATH $HOME/go/bin $PATH

# custom functions
function remove_path
  if set -l index (contains -i "$argv" $fish_user_paths)
    set -e fish_user_paths[$index]
    echo "Removed $argv from the path"
  end
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
