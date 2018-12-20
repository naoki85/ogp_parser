# OgpParser

OGP Parser is a Gem which analyzes the OGP of the target URL.  
After install this Gem, you can easily get ogp property in the target website.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ogp_parser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ogp_parser

## Usage

This is very simple.  
For example:

```rb
require "ogp_parser"

ogp = OgpParser.parse("http://sample.com")
```
Then, you can get below.

```rb
{
  title: "Sample title",
  description: "Sample description",
  image: "Image url",
  url: "http://sample.com"
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/naoki85/ogp_parser. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the OgpParser project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/naoki85/ogp_parser/blob/master/CODE_OF_CONDUCT.md).
