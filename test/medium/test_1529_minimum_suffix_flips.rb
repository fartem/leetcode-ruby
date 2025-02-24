# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1529_minimum_suffix_flips'
require 'minitest/autorun'

class MinimumSuffixFlipsTest < ::Minitest::Test
  def test_default_one = assert_equal(3, min_flips('10111'))

  def test_default_two = assert_equal(3, min_flips('101'))
end
