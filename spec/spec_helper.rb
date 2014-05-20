# spec_helper.rb
require 'chefspec'
require 'chefspec/server'
require 'chefspec/berkshelf'
require 'chefspec/cacher'

ChefSpec::Coverage.start!

RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate

  # :focus support to allow zooming in a single test/block
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true
  config.treat_symbols_as_metadata_keys_with_true_values = true
end
