source "http://rubygems.org"

ruby '>= 3.1'

group :production do
  %w{ sinatra
      rack
      rack-protection
      rake
      rdoc
      sqlite3
      tilt
      unicorn
  }.each { |package| gem package }
end

group :development, :test do
  gem 'rb-inotify' #, '~> 0.8.8'
  %w{ guard
      guard-minitest
      minitest-reporters
      capybara
      capybara_minitest_spec
  }.each { |package| gem package }
end

