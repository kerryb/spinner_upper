set :application, "spinner_upper"
set :repository,  "."
set :user, "rails"
set :deploy_via, :copy
set :copy_cache, true
set :copy_cache, "/tmp/caches/myapp"
set :copy_exclude, [".git/*", ".svn/*"]
set :copy_compression, :gzip # Also valid are :zip and :bz2


set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "10.249.162.68"                          # Your HTTP server, Apache/etc
role :app, "10.249.162.68"                          # This may be the same as your `Web` server
role :db,  "10.249.162.68", :primary => true # This is where Rails migrations will run

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :migrate do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

task :after_update_code do
  run "ln -nfs #{shared_path}/production.rb #{release_path}/config/environments/production.rb"
  run "cd #{release_path} && ./script/bundle"
  touch "#{release_path}/tmp/restart.txt"
end
