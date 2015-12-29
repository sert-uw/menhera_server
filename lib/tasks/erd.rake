namespace :erd do
  task :create do
    sh 'rake erd attributes=foreign_keys,primary_keys,content,timestamp'
  end
end
