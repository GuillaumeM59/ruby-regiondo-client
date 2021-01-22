# frozen_string_literal: true

require_relative "lib/regiondo/version"

Gem::Specification.new do |spec|
  spec.name          = "regiondo"
  spec.version       = Regiondo::VERSION
  spec.authors       = ["guillaumeM59"]
  spec.email         = ["dev.guillaumem59@gmail.com"]

  spec.summary       = "Ruby Client for Regiondo booking system"
  spec.description   = "Ruby Client who egt Regiondo catalog, make regiondocart and purchase bookings"
  spec.homepage      = "https://github.com/GuillaumeM59/ruby-regiondo-client"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/GuillaumeM59/ruby-regiondo-client"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/GuillaumeM59/ruby-regiondo-client"
  spec.metadata["changelog_uri"] = "https://github.com/GuillaumeM59/ruby-regiondo-client"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "http"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
