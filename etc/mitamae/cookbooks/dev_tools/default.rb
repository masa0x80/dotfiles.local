packages = node[:packages]
platform = node[:platform].to_sym

case platform
when :darwin
  packages[platform][:tap_list].each do |pkg|
    brew_tap pkg
  end

  packages[platform][:brew_list].each do |pkg|
    pkg pkg
  end
when :redhat
  packages[platform][:yum_list].each do |pkg|
    pkg pkg
  end

  package node[:remi_repo][:rpm_url] do
    not_if 'rpm -q %s' % node[:remi_repo][:package]
  end
end
