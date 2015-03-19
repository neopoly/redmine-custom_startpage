# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "custom_startpage/version"
require "custom_startpage/infos"

Gem::Specification.new do |spec|
  spec.name          = "redmine-custom_startpage"
  spec.version       = CustomStartpage::VERSION
  spec.authors       = CustomStartpage::Infos::AUTHORS.keys
  spec.email         = CustomStartpage::Infos::AUTHORS.values
  spec.summary       = CustomStartpage::Infos::DESCRIPTION
  spec.description   = CustomStartpage::Infos::DESCRIPTION
  spec.homepage      = CustomStartpage::Infos::URL
  spec.license       = CustomStartpage::Infos::LICENSE

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 4.2.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rubocop"
end
