# ListOfCountriesStatesCities

Ruby wrapper for https://github.com/dr5hn/countries-states-cities-database. FYI this is in a pretty rough shape.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'list_of_countries_states_cities'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install list_of_countries_states_cities

## Usage

Get a list of cities:

``` ruby
cities = ListOfCountriesStatesCities.cities
cities.size # => 143852
cities.first.name # => "Ashkāsham"
cities.last.name # => "Zvishavane District"
```

Get a list of states:

``` ruby
states = ListOfCountriesStatesCities.states
states.size # => 4868
states.first.name # => "Badakhshan"
states.first.code # => "BDS"
states.last.name # => "Midlands Province"
states.last.code # => "MI"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tatey/list_of_countries_states_cities.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT). Data under the same license as https://github.com/dr5hn/countries-states-cities-database
