# frozen_string_literal: true

require 'simplecov'
::SimpleCov.start do
  add_filter '706_design_hashmap'

  minimum_coverage 100
end
