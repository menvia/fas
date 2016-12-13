Gem::Specification.new do |s|
  s.name        = 'fas'
  s.version     = '0.0.2'
  s.date        = '2016-12-13'
  s.summary     = "Farol App Setup"
  s.description = "A simple hello world gem"
  s.authors     = ["Felipe Plets"]
  s.email       = 'felipe.plets@menvia.com'
  s.files       = ["lib/fas.rb"]
  s.executables << 'fas'
  s.homepage    = 'http://rubygems.org/gems/fas'
  s.license     = 'MIT'
  s.add_runtime_dependency 'json', '~> 2.0', '>= 2.0.0'
  s.add_runtime_dependency 'rubyzip', '~> 1.2', '>= 1.2.0'
end