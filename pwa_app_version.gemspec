require_relative 'lib/pwa_app_version/version'
require_relative 'lib/pwa_app_version/init'

Gem::Specification.new do |spec|
  spec.name        = 'pwa_app_version'
  spec.version     = PwaAppVersion::VERSION
  spec.authors     = ['Vamsi']
  spec.email       = ['vramisetti@aligntech.com']
  # spec.homepage    = 'TODO'
  spec.summary     = 'Determains the version of the code push'
  # spec.description = 'TODO: Description of PwaAppVersion.'
  spec.license     = 'MIT'
  # spec.executables = PwaAppVersion.init
  spec.bindir = 'bin'
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata['homepage_uri'] = spec.homepage
  # spec.metadata['source_code_uri'] = "TODO: Put your gem's public repo URL here."
  # spec.metadata['changelog_uri'] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '>= 4.2.11'
end
