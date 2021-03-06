# frozen_string_literal: true
require 'coveralls'
Coveralls.wear!('rails')
require 'simplecov'
require 'simplecov-console'
require_relative './api_controller_helper'



RSpec.configure do |config|
  require 'web_helpers'
  config.include ApiControllerHelper

  # config.before(:suite) do
  #
  #   Rails.application.load_seed # loading seeds
  # end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

end

# SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
#                                                                  SimpleCov::Formatter::Console
#                                                                ])
# SimpleCov.start do
#   add_filter "app/jobs/application_job.rb"
#   add_filter "app/mailers/application_mailer.rb"
#   add_filter "app/channels/application_cable/connection.rb"
#   add_filter "app/channels/application_cable/channel.rb"
# end
