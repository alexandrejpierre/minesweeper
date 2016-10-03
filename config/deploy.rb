# config valid only for current version of Capistrano
lock '3.6.1'

# 10.06.2016: application name set to minesweeper, and repository set
set :application, 'minesweeper'
set :repo_url, 'https://github.com/alexandrejpierre/minesweeper.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# 10.06.2016: set deploy path
set :deploy_to, '/var/www/minesweeper'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do
	
	# 10.06.2016: added a restart scheme to restart the Passenger app server after deployment
	desc 'Restart application'
	task :restart do
		on roles(:app), in: :sequence, wait: 5 do
			execute :touch, release_path.join('tmp/restart.txt')
		end
	end
	
	
	after :publishing, :restart
	#10.06.2016: end of addition

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end

#commentaire
