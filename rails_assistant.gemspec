$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_assistant/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_assistant"
  s.version     = RailsAssistant::VERSION
  s.authors     = ["Daniel Brooker"]
  s.email       = ["dan@nocturnalcode.com"]
  s.homepage    = "http://www.railsassistant.com"
  s.summary     = "TODO: Summary of RailsAssistant."
  s.description = "TODO: Description of RailsAssistant."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.11"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
end
