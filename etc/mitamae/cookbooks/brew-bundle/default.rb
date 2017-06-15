platform = node[:platform].to_sym

if platform == :darwin
  execute 'brew bundle' do
    command <<-"EOF"
      #{node[:proxy_config]}
      export PATH=#{node[:env][:path]}
      brew tap homebrew/bundle
      brew bundle --file=#{File.join(File.expand_path('../../..', __FILE__), 'attributes', "Brewfile.local")}
    EOF
    user node[:user]
  end
end
