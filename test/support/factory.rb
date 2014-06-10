require 'assert/factory'

module Factory
  extend Assert::Factory

  def self.template_json_rendered(handler, locals)
    { :thing => {
        :id => handler.identifier,
        :name => handler.name,
        :local1 => locals[:local1]
      }
    }
  end

end
