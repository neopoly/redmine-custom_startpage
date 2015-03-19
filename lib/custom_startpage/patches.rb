require "custom_startpage/patches/welcome_controller_patch"

module CustomStartpage
  # This module holds all patches of a default Redmine application
  module Patches
    # Apply all patches
    def self.apply!
      apply_to(::WelcomeController, WelcomeControllerPatch)
    end

    private

    def self.apply_to(target, mod)
      target.send(:include, mod)
    end
  end
end
