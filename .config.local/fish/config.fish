if type -qa ghq
  set -x DOTFILE (ghq root)/github.com/masa0x80/dotfiles
  set -U fish_user_paths (ghq root)/github.com/masa0x80/dotfiles.local/bin $fish_user_paths
end
