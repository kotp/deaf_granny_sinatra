source "http://rubygems.org"

group :production do
  %w{ sinatra
      rack
      rack-protection
      rake
      rdoc
      rdoc-data
      sqlite3
      sqlite3
      tilt
      unicorn
  }.each {|package| gem package }
end

group :development, :test do
  gem 'rb-inotify', '~> 0.8.8'
  %w{ guard
      minitest-reporters
      guard-minitest
      capybara
      capybara_minitest_spec
  }.each {|package| gem package}
end

