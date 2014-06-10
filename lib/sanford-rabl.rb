require 'rabl'
require 'sanford/template_engine'
require 'sanford-rabl/version'

module Sanford::Rabl

  class TemplateEngine < Sanford::TemplateEngine

    def render(path, service_handler, locals)
      Rabl::Renderer.new(path, nil, {
        :view_path  => self.source_path,
        :format     => 'hash',
        :locals     => locals
      }).render(service_handler)
    end

  end

end
