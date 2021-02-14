# hub
set -gx HUB_CONFIG $HOME/.config/hub/config

set -gx DISABLE_ISSUE_NUMBER 1

type -qa ghq && set -gx DOTFILE_LOCAL (ghq root)/github.com/masa0x80/dotfiles.local

__load_file "$HOME/Library/Mobile Documents/com~apple~CloudDocs/.config/login.fish"

# Append $DOTFILE_LOCAL/bin to $PATH
if not set -q DOTFILE_LOCAL
    type -qa ghq && set -gx DOTFILE_LOCAL (ghq root)/github.com/masa0x80/dotfiles.local
end
test -d $DOTFILE_LOCAL/bin && __add_fish_user_paths $DOTFILE_LOCAL/bin

# Snippets
set -l snippets_path (ghq root)/github.com/masa0x80/snippets/snippets.d
if test "$snippets_root" = ''
    set -gx snippets_root $snippets_path
else
    set -a snippets_root $snippets_path
end
