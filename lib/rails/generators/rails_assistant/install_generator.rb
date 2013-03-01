require 'rails/generators'

module RailsAssistant
	module Generators
		class InstallGenerator < Rails::Generators::Base
		  
		  def add_assets
		  	format = detect_layout_format         
		    insert_into_file "app/views/layouts/application#{format}", code_for_format(format), :after => csrf(format)              
		  end
		  
		  private

		  def detect_layout_format
		    return '.html.erb' if File.exist?('app/views/layouts/application.html.erb')
		    return '.html.haml' if File.exist?('app/views/layouts/application.html.haml')
		    return '.html.slim' if File.exist?('app/views/layouts/application.html.slim')
		  end

		  def code_for_format(format)
		  	if format == ".html.erb"
		  		"  <% if ENV['com.nocturnalcode.RailsAssistant'].present? %>\n    <%= javascript_include_tag 'rails_assistant/rails_assistant' %>\n    <%= stylesheet_link_tag 'rails_assistant/rails_assistant' %>\n  <% end %>\n"
		  	elsif format == ".html.haml"
		  		"  - if ENV['com.nocturnalcode.RailsAssistant'].present?\n    = javascript_include_tag 'rails_assistant/rails_assistant'\n    = stylesheet_link_tag 'rails_assistant/rails_assistant'\n  - end\n"
			elsif format == ".html.slim"
		  		"  - if ENV['com.nocturnalcode.RailsAssistant'].present?\n    = javascript_include_tag 'rails_assistant/rails_assistant'\n    = stylesheet_link_tag 'rails_assistant/rails_assistant'\n  - end\n"
			else
				""
			end
		  end

		  def csrf(format)
		  	if format == ".html.erb"
		  		"<%= csrf_meta_tags %>\n"
		  	elsif format == ".html.haml"
		  		"= csrf_meta_tags\n"
			elsif format == ".html.slim"
		  		"= csrf_meta_tags\n"
			else
				""
			end
		  end

		end
	end
end