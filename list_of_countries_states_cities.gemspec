require_relative 'lib/list_of_countries_states_cities/version'

Gem::Specification.new do |spec|
  spec.name          = "list_of_countries_states_cities"
  spec.version       = ListOfCountriesStatesCities::VERSION
  spec.authors       = ["Tate Johnson"]
  spec.email         = ["tate@tatey.com"]

  spec.summary       = %q{Based on Countries States Cities Database}
  spec.description   = %q{Based on Countries States Cities Database: https://github.com/dr5hn/countries-states-cities-database}
  spec.homepage      = "https://github.com/tatey/list_of_countries_states_cities"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tatey/list_of_countries_states_cities"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
