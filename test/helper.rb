$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "fluent/config/regexp_type"
require "test-unit"

require "fluent/plugin/output"
require "fluent/test"
require "fluent/test/driver/output"
