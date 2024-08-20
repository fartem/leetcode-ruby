# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/11_container_with_most_water'
require 'minitest/autorun'

class ContainerWithMostWaterTest < ::Minitest::Test
  def test_default_one = assert_equal(49, max_area([1, 8, 6, 2, 5, 4, 8, 3, 7]))

  def test_default_two = assert_equal(1, max_area([1, 1]))
end
