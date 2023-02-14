$:.unshift('./lib', './spec')
require 'minitest/autorun'
require 'minitest/reporters'
require 'capybara'
require 'capybara/dsl'
require 'capybara_minitest_spec'
require './deaf_granny'
require 'rack/test'

set :environment, :test

# To select a different reporter copy the spec/spec_config.rb.example to
# spec/spec_config.rb and select the reporter you wish to use.
File.exist?('spec/spec_config.rb') ?
  require( 'spec_config') :
  Option = {report_style: "Default"}
MiniTest::Reporters.use!(eval("MiniTest::Reporters::#{Option[:report_style]}Reporter.new"))

class MiniTest::Spec
  include Capybara::DSL
  Capybara.app = Sinatra::Application.new
end


