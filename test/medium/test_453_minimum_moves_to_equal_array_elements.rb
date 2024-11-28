# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/453_minimum_moves_to_equal_array_elements'
require 'minitest/autorun'

class MinimumMovesToEqualArrayElementsTest < ::Minitest::Test
  def test_default_one = assert_equal(3, min_moves([1, 2, 3]))

  def test_default_two = assert_equal(0, min_moves([1, 1, 1]))
end
