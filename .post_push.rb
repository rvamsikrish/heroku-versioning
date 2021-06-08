require 'uri'
require 'byebug'
class PrePush
  attr_accessor :url, :git_url

  def initialize(url)
    self.url = url
    self.git_url = URI.parse(url)
  end

  def app_name
    url.split('/').last.split('.').first if git_url.host == 'git.heroku.com'
  end

  def version_number
    version_num = `git rev-list HEAD --count`
    commit_hash = `git rev-parse Head`
    date_val = `git show -s --format=%ci #{commit_hash}`
    byebug
    "#{date_val.split(' ')[0]}.#{version_num}"
  end
end

@pre_push = PrePush.new(ARGV[0])
case ARGV[1]
when 'app_name'
  puts @pre_push.app_name
when 'version_number'
  puts @pre_push.version_number
end

# @app_name = nil
# myUri = URI.parse(ARGV[0])
# app_name = ARGV[0].split('/').last.split('.').first if myUri.host == 'git.heroku.com'
