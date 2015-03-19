[github]: https://github.com/neopoly/redmine-custom_startpage
[doc]: http://rubydoc.info/github/neopoly/redmine-custom_startpage/master/file/README.md
[gem]: https://rubygems.org/gems/redmine-custom_startpage
[gem-badge]: https://img.shields.io/gem/v/redmine-custom_startpage.svg
[inchpages]: https://inch-ci.org/github/neopoly/redmine-custom_startpage
[inchpages-badge]: https://inch-ci.org/github/neopoly/redmine-custom_startpage.svg?branch=master&style=flat

# redmine-custom_startpage

[![Gem Version][gem-badge]][gem]
[![Inline docs][inchpages-badge]][inchpages]

[Gem][gem] |
[Source][github] |
[Documentation][doc]

Allows the user to select almost any Redmine page as the initial start page after login.

## Installation

Ensure you have a `Gemfile.local` file in your Redmine installation. Add to your `Gemfile.local`:

```ruby
gem "redmine-custom_startpage"
```

And then execute:

```
$ bundle
```

Restart the Redmine application

## Usage

No further steps needed. You can configure the plugin using Redmine's native plugin
configuration page.

## Contributing

1. Fork it ( https://github.com/neopoly/redmine-custom_startpage/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
