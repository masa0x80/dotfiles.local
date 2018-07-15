# When executing `make init` in the dotfiles directory, both common and append roles are done.
set -gx DOTFILE_ROLE 'common,append'

# hub
set -gx HUB_CONFIG $HOME/.config/hub/config

set -gx DISABLE_ISSUE_NUMBER 1

if type -qa ghq
    set -gx DOTFILE (ghq root)/github.com/masa0x80/dotfiles
    set -gx DOTFILE_LOCAL (ghq root)/github.com/masa0x80/dotfiles.local
    set -gx fish_user_paths $DOTFILE_LOCAL/bin $fish_user_paths
end

__load_file $HOME/Box/.config/config.fish
