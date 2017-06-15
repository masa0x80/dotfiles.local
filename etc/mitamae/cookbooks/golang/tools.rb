node[:golang_repos].each do |repo|
  execute "go get #{repo}"
  user node[:user]
end
