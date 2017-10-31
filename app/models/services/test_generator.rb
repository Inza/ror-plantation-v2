module Services
  class TestGenerator
    def initialize(template_id)
      @template = Template.find(template_id)
    end

    def generate
      @template.generate_test
    end

    def generate!
      test = generate
      test.save
    end
  end
end