# GetRoot

This is essentially written for [RuboCop::Packaging](https://github.com/utkarsh2102/rubocop-packaging)
to get the root directory of your git repository at runtime.

This **only** works on a git repository. Otherwise this won't work, because it
essentially looks for the presence of a `.git` directory.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'get_root'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install get_root
```

## Usage

You can use `get_root` for your project in the following way:
```ruby
require 'get_root'

root_path = GetRoot.path  # or GetRoot::path
```


Here's a snippet to see how it runs/behaves:
```ruby
irb(main):001:0> require 'get_root'
=> true

irb(main):002:0> Dir.pwd  # to show the current directory.
=> "/home/utkarsh/github/rubocop-packaging/spec/rubocop/cop/packaging"

irb(main):003:0> GetRoot.path  # to get the root direcotry of this project
=> "/home/utkarsh/github/rubocop-packaging"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then,
run `rake spec` to run the tests. You can also run `bin/console` for an
interactive prompt that will allow you to experiment.  
To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

As always, bug reports and pull requests are heartily welcomed! 💖  
This project is intended to be a safe and welcoming space for collaboration.

## License
`get_root` is available as open-source under the
[MIT License](https://github.com/utkarsh2102/get_root/blob/master/LICENSE).
