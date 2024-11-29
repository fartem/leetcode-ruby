# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/462_minimum_moves_to_equal_array_elements_ii'
require 'minitest/autorun'

class MinimumMovesToEqualArrayElementsIITest < ::Minitest::Test
  def test_default_one = assert_equal(2, min_moves2([1, 2, 3]))

  def test_default_two = assert_equal(16, min_moves2([1, 10, 2, 9]))
end
