require 'mina/bundler'
require 'mina/rails'
require 'mina/git'
require 'mina/rbenv'

set :domain,      'cloud.alii.pro'
set :user,        'ali'
set :deploy_to,   '/home/ali/blog'
set :repository,  'https://github.com/aliismayilov/blog.git'
set :branch,      'master'

task :environment do
  invoke :'rbenv:load'
end

desc "Deploys the current version to the server."
task :deploy => :environment do
  deploy do
    invoke :'git:clone'
    invoke :'bundle:install'
    queue "#{bundle_prefix} jekyll build"
  end
end
