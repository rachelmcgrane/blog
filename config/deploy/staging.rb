############################################
# Setup Server
############################################

set :stage, :staging
set :stage_url, "http://staging.rachelmcgrane.com"
server "208.113.217.180", user: "SSHUSER", roles: %w{web app db}
set :deploy_to, "/home/rach56/staging.rachelmcgrane.com"

############################################
# Setup Git
############################################

set :branch, "development"

############################################
# Extra Settings
############################################

#specify extra ssh options:

#set :ssh_options, {
#    auth_methods: %w(password),
#    password: 'password',
#    user: 'username',
#}

#specify a specific temp dir if user is jailed to home
#set :tmp_dir, "/path/to/custom/tmp"
