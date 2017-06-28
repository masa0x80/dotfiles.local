# When executing `make init` in the dotfiles directory, both common and append roles are done.
set -gx DOTFILE_ROLE 'common,append'

if type -qa ghq
    set -gx DOTFILE (ghq root)/github.com/masa0x80/dotfiles
    set -gx DOTFILE_LOCAL (ghq root)/github.com/masa0x80/dotfiles.local
    set -gx fish_user_paths $DOTFILE_LOCAL/bin $fish_user_paths
end
