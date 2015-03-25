require File.expand_path('../lib/uc.micro-rb/version.rb', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'uc.micro-rb'
  gem.version       = UCMicro::VERSION
  gem.authors       = ["Brett Walker", "Vitaly Puzrin"]
  gem.email         = 'github@digitalmoksha.com'
  gem.summary       = "Micro subset of unicode data files for motion-markdown-it projects"
  gem.description   = "Micro subset of unicode data files for motion-markdown-it projects"
  gem.homepage      = 'https://github.com/digitalmoksha/uc.micro-rb'
  gem.licenses      = ['WTFPL']

  gem.files         = Dir.glob('lib/**/*.rb')
  gem.files        << 'README.md'
  gem.test_files    = Dir.glob('spec/**/*.rb')

  gem.require_paths = ["lib"]

end