# Sanford::Rabl

Sanford [template engine](https://github.com/redding/sanford) for rendering Rabl templates

## Usage

Register the engine:

```ruby
# in config/services.rb or wherever
require 'sanford'
require 'sanford-rabl'

Sanford.configure do |c|

  c.template_source "/path/to/templates" do |s|
    s.engine 'rabl', Sanford::Rabl::TemplateEngine
  end

end
```

Add `.rabl` to any template files in your template source path.  Sanford will render their content using Rabl when they are rendered.

### Notes

Rabl allows you to specify the template scope.  Templates will be rendered in the scope of the service handler.  Therefore, you can access any service handler attributes directly in the template file.

## Installation

Add this line to your application's Gemfile:

    gem 'sanford-rabl'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sanford-rabl

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
