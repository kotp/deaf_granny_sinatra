$:.unshift('./lib', './spec')
require 'minitest/autorun'
require 'minitest/reporters'
require 'capybara'
require 'capybara/dsl'
require './deaf_granny'
require 'rack/test'
require 'capybara/minitest/spec'
require 'capybara/minitest'

set :environment, :test
