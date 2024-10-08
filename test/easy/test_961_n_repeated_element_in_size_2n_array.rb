# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/961_n_repeated_element_in_size_2n_array'
require 'minitest/autorun'

class NRepeatedElementInSize2NArrayTest < ::Minitest::Test
  def test_default_one = assert_equal(3, repeated_n_times([1, 2, 3, 3]))

  def test_default_two = assert_equal(2, repeated_n_times([2, 1, 2, 5, 3, 2]))

  def test_default_three = assert_equal(5, repeated_n_times([5, 1, 5, 2, 5, 3, 5, 4]))

  def test_additional_one = assert_equal(0, repeated_n_times([1, 2]))
end
