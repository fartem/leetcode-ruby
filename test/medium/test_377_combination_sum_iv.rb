# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/377_combination_sum_iv'
require 'minitest/autorun'

class CombinationSumIVTest < ::Minitest::Test
  def test_default_one = assert_equal(7, combination_sum4([1, 2, 3], 4))

  def test_default_two = assert_equal(0, combination_sum4([9], 3))
end
