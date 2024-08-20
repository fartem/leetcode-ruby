# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1752_check_if_array_is_sorted_and_rotated'
require 'minitest/autorun'

class CheckIfArrayIsSortedAndRotatedTest < ::Minitest::Test
  def test_default_one = assert(check([3, 4, 5, 1, 2]))

  def test_default_two = assert(!check([2, 1, 3, 4]))

  def test_default_three = assert(check([1, 2, 3]))
end
