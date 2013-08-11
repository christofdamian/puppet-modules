node 'hawkfire' {
  include 'yum_repos::rpmfusion::nonfree'
  include 'development'
  include 'ruby_development'
  include 'desktop'
}
