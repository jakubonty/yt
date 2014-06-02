require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

Dir['./spec/support/**/*'].each {|f| require f}

RSpec.configure do |config|
  config.order = 'random'
end