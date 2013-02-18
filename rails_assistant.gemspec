$:.push File.expand_path("../lib", __FILE__)

require "rails_assistant/version"

Gem::Specification.new do |s|
  s.name        = "rails_assistant"
  s.version     = RailsAssistant::VERSION
  s.authors     = ["Daniel Brooker","Tom Carey"]
  s.email       = ["dan@nocturnalcode.com","tom@nocturnalcode.com"]
  s.homepage    = "http://www.railsassistant.com"
  s.summary     = "Websocket connection to Rails Asssistant Mac App"
  s.description = "rails_assistant gem connects via a websocket to your Rails Assistant project, currently this allows Rails Assistant to reload the site, in future we'll use it to facilitate communication. This gem will not affect your production environment, or your development environment outside of Rails Assistant."

  s.files = Dir["{app,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "> 3.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  # s.add_development_dependency 'capybara'
  # s.add_development_dependency 'factory_girl_rails'
end
