require "custom_startpage/patches"

module CustomStartpage
  # Registers this gems a Redmine plugin and applies the needed patches
  class RedminePlugin
    include CustomStartpage::Infos

    DEFAULT_SETTINGS = {
      "active"     => false,
      "controller" => "",
      "action"     => "",
      "id"         => ""
    }.freeze

    SETTING_PARTIAL = "settings/custom_startpage_settings"

    def initialize
      register!
      boot!
    end

    private

    def register!
      Redmine::Plugin.register :custom_startpage do
        name NAME
        author AUTHORS.keys.join(", ")
        description DESCRIPTION
        version VERSION
        url URL
        author_url URL
        directory Engine.root

        settings default: DEFAULT_SETTINGS, partial:  SETTING_PARTIAL
      end
    end

    def boot!
      Patches.apply!
    end
  end
end
