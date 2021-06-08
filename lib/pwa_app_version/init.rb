require 'fileutils'
require 'pry'
module PwaAppVersion
  # def copy_with_path(src, dst)
  #   FileUtils.mkdir_p(File.dirname(dst))
  #   FileUtils.cp(src, dst)
  # end
  # copy_with_path(src, dst)
  RAILS_APP_PATH = ENV['PWD']
  `echo '------coping files---------'`
  `cp pre-push #{RAILS_APP_PATH}/.git/hooks`
  `cp .pre_push.rb #{RAILS_APP_PATH}/.git/hooks`
  `echo '------changing permissions files---------'`
  `chmod 755  #{RAILS_APP_PATH}/.git/hooks/post-push`
  `chmod 755  #{RAILS_APP_PATH}/.git/hooks/.post_push.rb`
end