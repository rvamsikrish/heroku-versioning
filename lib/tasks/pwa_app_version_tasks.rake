desc 'Explaining what the task does'

task :pwa_app_version do
  version_num = `git rev-list HEAD --count`
  commit_hash = `git rev-parse Head`
  date_val = `git show -s --format=%ci #{commit_hash}`
  puts "#{date_val.split(' ')[0].split('-').join('.')}_#{version_num}"
end
