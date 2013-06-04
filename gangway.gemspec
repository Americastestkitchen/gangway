$:.push File.expand_path("../lib", __FILE__)

require 'gangway/version'

Gem::Specification.new do |s|
  s.name        = 'gangway'
  s.version     = Gangway::VERSION
  s.date        = '2013-06-04'
  s.summary     = 'eWay SOAP wrapper'
  s.description = s.summary
  s.authors     = ["America's Test Kitchen"]

  s.files = Dir["lib/**/*"]
  #s.test_files = Dir["spec/**/*"]

  s.add_dependency 'savon',  '~> 2.2.0'
end

