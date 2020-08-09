require "list_of_countries_states_cities/version"
require "yaml"

module ListOfCountriesStatesCities
  class Error < StandardError; end

  class City
    attr_reader :name

    def initialize(name)
      @name = name
    end
  end

  class State
    attr_reader :name, :code

    def initialize(name, code)
      @name = name
      @code = code
    end
  end

  def self.cities
    @cities ||= YAML.load_file(File.expand_path("../../db/cities.yml", __FILE__)).fetch("city").map do |yaml|
      City.new(yaml["name"])
    end
  end

  def self.states
    @states ||= YAML.load_file(File.expand_path("../../db/states.yml", __FILE__)).fetch("state").map do |yaml|
      State.new(yaml["name"], yaml["state_code"])
    end
  end
end
