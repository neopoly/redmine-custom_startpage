module CustomStartpage
  module Patches
    module WelcomeControllerPatch
      extend ActiveSupport::Concern

      included do
        before_filter :redirect_to_startpage, only: :index
      end

      def redirect_to_startpage
        return unless startpage_active?

        redirect_to(redirection_options)
      end

      private

      def startpage_active?
        from_settings("active") && from_settings("controller")
      end

      def redirection_options
        {
          controller: from_settings("controller"),
          action:     from_settings("action"),
          id:         from_settings("id")
        }
      end

      def from_settings(key)
        return unless settings[key].present?
        settings[key]
      end

      def settings
        Setting.plugin_custom_startpage
      end
    end
  end
end
