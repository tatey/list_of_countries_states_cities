require "test_helper"

class ListOfCountriesStatesCitiesTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ListOfCountriesStatesCities::VERSION
  end

  def test_cities
    cities = ListOfCountriesStatesCities.cities
    assert_equal(143852, cities.size)
    assert_equal("Ashkāsham", cities.first.name)
    assert_equal("Zvishavane District", cities.last.name)
  end

  def test_states
    states = ListOfCountriesStatesCities.states
    assert_equal(4868, states.size)
    assert_equal("Badakhshan", states.first.name)
    assert_equal("BDS", states.first.code)
    assert_equal("Midlands Province", states.last.name)
    assert_equal("MI", states.last.code)
  end
end
