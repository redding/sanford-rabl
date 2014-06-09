require 'rabl'
require 'sanford/template_engine'
require 'sanford-rabl/version'

module Sanford::Rabl

  class TemplateEngine < Sanford::TemplateEngine

    def render(path, scope)
      Rabl::Renderer.new(path, nil, {
        :view_path  => self.source_path,
        :format     => 'hash'
      }).render(scope)
    end

  end

end
