node 'common' {
    include 'yum_repos::rpmfusion::nonfree'
    include 'development'
    include 'desktop'
}
  
