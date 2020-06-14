# When executing `make init` in the dotfiles directory, both common and append roles are done.
set -gx DOTFILE_ROLE 'common'

# hub
set -gx HUB_CONFIG $HOME/.config/hub/config

set -gx DISABLE_ISSUE_NUMBER 1

if type -qa ghq
    set -x DOTFILE_LOCAL (ghq root)/github.com/masa0x80/dotfiles.local
    __add_fish_user_paths $DOTFILE_LOCAL/bin
    set -x DOTFILE (ghq root)/github.com/masa0x80/dotfiles
    __add_fish_user_paths $DOTFILE/bin
end

__load_file $HOME/Box/.config/config.fish
