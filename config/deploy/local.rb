############################################
# Setup Server
############################################

set :stage, :local
set :stage_url, "192.168.33.10"
server "192.168.33.10", user: "vagrant", roles: %w{web app db}
set :deploy_to, "/var/www/public"

############################################
# Setup Git
############################################

set :branch, "development"

############################################
# Extra Settings
############################################

#specify extra ssh options:

set :ssh_options, {
    auth_methods: %w(password),
    password: 'vagrant',
    user: 'vagrant',
}

#specify a specific temp dir if user is jailed to home
#set :tmp_dir, "/path/to/custom/tmp"
