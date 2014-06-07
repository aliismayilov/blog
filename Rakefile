desc 'rsync to vagrant box'
task :rsync do
  if system 'bundle exec jekyll build'
    system "rsync -avz --delete _site/ vagrant@192.168.33.10:/home/vagrant/blog/ --rsync-path='/usr/bin/sudo /usr/bin/rsync'"
  end
end
