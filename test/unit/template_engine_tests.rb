require 'assert'
require 'sanford-rabl'

require 'sanford/template_engine'

class Sanford::Rabl::TemplateEngine

  class UnitTests < Assert::Context
    desc "Sanford::Rabl::TemplateEngine"
    setup do
      @engine = Sanford::Rabl::TemplateEngine.new({
        'source_path' => TEST_SUPPORT_PATH
      })
    end
    subject{ @engine }

    should "be a Sanford template engine" do
      assert_kind_of Sanford::TemplateEngine, subject
      assert_respond_to 'render', subject
    end

    should "render rabl template files as raw data output" do
      service_handler = OpenStruct.new({
        :identifier => Factory.integer,
        :name => Factory.string
      })
      locals = { :local1 => Factory.string }
      exp = Factory.template_json_rendered(service_handler, locals)

      assert_equal exp, subject.render('template.json', service_handler, locals)
    end

  end

end
