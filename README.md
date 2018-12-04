# Bites

> Content changes shouldn't require PRs.

Bites are a simple way of allowing anyone with the correct authorization to edit content from right within your webpage. Engineers shouldn't be the only ones capable of making copy changes, clients or non technical teammembers should be equally able.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bites'
```

And then execute:

    $ bundle install

Once you've installed the gem you need to run

    $ rails generate bites:install

This includes a migration so you will also need to run `rails db:migrate`

## Usage

Bites offers a simple template helper that inserts your content into the webpage

```ruby
<%= text_bite :text_identifier, default: 'This is some default text' %>
```

All you need to provide is an identifier symbol (e.g. `:homepage_welcome_text`).
The default text is also used as the initial value.

If you want to allow editing of the bite you must include the `Biteable` helper in the associated controller:

```ruby
class StaticPagesController < ApplicationController
  include Biteable

  def index
  end
end
```

Appending `edit_page=true` as a query param to the URL will enter the page into edit mode (where bites are replaced with text boxes).

Edit ability is protected using HTTP simple auth. You must specify a username and password as environment variables:

    BITES_USERNAME
    BITES_PASSWORD

I recommend using something like [dotenv](https://github.com/bkeepers/dotenv) for this.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/daibhin/bites. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Bites project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/daibhin/bites/blob/master/CODE_OF_CONDUCT.md).
