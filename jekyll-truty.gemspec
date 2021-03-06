
Gem::Specification.new do |s|
  s.name        = 'jekyll-truty'
  s.version     = '0.2.0'
  s.platform    = Gem::Platform::RUBY
  s.summary     = "True typography converter for Jekyll and Kramdown"
  s.description = "Kramdown extension for Jekyll, which improves plain text typography."
  s.authors     = ["Matěj Kašpar Jirásek"]
  s.email       = 'matej.jirasek@me.com'
  s.files       = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.homepage    = 'https://github.com/mkj-is/jekyll-truty'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 2.0.0'

  s.add_dependency 'truty', '~> 0.4'
  s.add_dependency 'kramdown', '~> 1.9'
  s.add_dependency 'jekyll', '~> 3.0'
  s.add_dependency 'nokogiri', '~> 1.6'

  s.add_development_dependency 'rubygems-tasks', '~> 0.2'

end
