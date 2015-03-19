require "custom_startpage/redmine_plugin"

module CustomStartpage
  # Simple engine to support the Redmine plugin
  class Engine < ::Rails::Engine
    config.to_prepare do
      RedminePlugin.new
    end
  end
end
