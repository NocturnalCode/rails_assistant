module RailsAssistant
  class Engine < ::Rails::Engine
    isolate_namespace RailsAssistant
    config.generators do |g|
      g.test_framework      :rspec,        :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.helper false
    end
  end
end
