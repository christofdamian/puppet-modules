node 'common' {
    include 'yum_repos::rpmfusion::nonfree'
    include 'development'
    include 'ruby_development'
    include 'nodejs_development'
    include 'desktop'
}
  
