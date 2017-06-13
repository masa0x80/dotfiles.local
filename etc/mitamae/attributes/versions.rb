node.reverse_merge!(
  git: {
    version: '2.13.0'
  },
  golang: {
    version: '1.8'
  },
  remi_repo: {
    rpm_url: 'http://rpms.famillecollet.com/enterprise/remi-release-7.rpm',
    package: 'remi-release'
  }
)
