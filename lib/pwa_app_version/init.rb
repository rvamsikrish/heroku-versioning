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
  `cp post-push #{RAILS_APP_PATH}/.git/hooks`
  `cp .post_push.rb #{RAILS_APP_PATH}/.git/hooks`
  `echo '------coping files---------'`
  `chmod 755  #{RAILS_APP_PATH}/.git/hooks/post-push`
  `chmod 755  #{RAILS_APP_PATH}/.git/hooks/.post_push.rb`
end
