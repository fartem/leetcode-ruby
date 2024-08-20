# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1909_remove_one_element_to_make_the_array_strictly_increasing'
require 'minitest/autorun'

class RemoveOneElementToMakeTheArrayStrictlyIncreasingTest < ::Minitest::Test
  def test_default_one = assert(can_be_increasing([1, 2, 10, 5, 7]))

  def test_default_two = assert(!can_be_increasing([2, 3, 1, 2]))

  def test_default_three = assert(!can_be_increasing([1, 1, 1]))
end
