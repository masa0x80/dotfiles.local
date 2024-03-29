# hub
set -gx HUB_CONFIG $HOME/.config/hub/config

set -gx DISABLE_ISSUE_NUMBER 1

type -qa ghq && set -gx DOTFILE_LOCAL (ghq root)/github.com/masa0x80/dotfiles.local

type -qa ghq && __load_file (ghq root)/github.com/masa0x80/config.local/fish/login.fish

# Append $DOTFILE_LOCAL/bin to $PATH
if not set -q DOTFILE_LOCAL
    type -qa ghq && set -gx DOTFILE_LOCAL (ghq root)/github.com/masa0x80/dotfiles.local
end
test -d $DOTFILE_LOCAL/bin && __add_fish_user_paths $DOTFILE_LOCAL/bin
