require './lib/giffer/version'

Gem::Specification.new do |s|
  s.files = Dir.glob("lib/**/*.rb")
  s.test_files  = Dir.glob("{spec,test}/**/*.rb")

  s.name        = "giffer"
  s.version     = Giffer::VERSION
  s.authors     = ["Denis Ivanov"]
  s.email       = ["visible@jumph4x.net"]

  s.summary     = "Giffer gives .GIFs"
  s.description = "Sends a request to www.gifbin.com and parses out the GIF url"
  s.homepage    = "https://github.com/jumph4x/giffer"

  s.add_dependency 'nokogiri', '~> 1.5'
  s.add_development_dependency 'rspec', '~> 2.10'
end
