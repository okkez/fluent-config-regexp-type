require "helper"

class Fluent::Plugin::TestOutput < Fluent::Plugin::Output
  Fluent::Plugin.register_output("test", self)
  config_param :pattern, :regexp

  def process(tag, es)
  end
end

class RegexpTypeTest < Test::Unit::TestCase
  def create_driver(conf)
    Fluent::Test::Driver::Output.new(Fluent::Plugin::TestOutput).configure(conf)
  end

  setup do
    Fluent::Test.setup
  end

  test "simple" do
    conf = %[
      pattern /^test$/i
    ]
    d = create_driver(conf)
    regexp = d.instance.pattern
    assert_equal(/^test$/i, regexp)
  end
end
