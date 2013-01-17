Rails.application.routes.draw do

  mount RailsAssistant::Engine => "/rails_assistant"

  root :to => "home#index" 

end
