############################################
# Setup Server
############################################

set :stage, :production
set :stage_url, "http://rachelmcgrane.com"
server "208.113.217.180", user: "SSHUSER", roles: %w{web app db}
set :deploy_to, "/home/rach56/rachelmcgrane.com"

############################################
# Setup Git
############################################

set :branch, "master"

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
