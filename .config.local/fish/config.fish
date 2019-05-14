# When executing `make init` in the dotfiles directory, both common and append roles are done.
set -gx DOTFILE_ROLE 'common'

# hub
set -gx HUB_CONFIG $HOME/.config/hub/config

set -gx DISABLE_ISSUE_NUMBER 1

if type -qa ghq
    set -x DOTFILE (ghq root)/github.com/masa0x80/dotfiles
    set -x DOTFILE_LOCAL (ghq root)/github.com/masa0x80/dotfiles.local
    set -gx PATH $DOTFILE_LOCAL/bin $PATH
end

__load_file $HOME/Box/.config/config.fish
