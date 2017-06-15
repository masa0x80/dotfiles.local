directory node[:src_dir] do
  owner node[:user]
end

include_role 'local'
