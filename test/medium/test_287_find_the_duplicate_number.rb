# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/287_find_the_duplicate_number'
require 'minitest/autorun'

class FindTheDuplicateNumberTest < ::Minitest::Test
  def test_default_one = assert_equal(2, find_duplicate([1, 3, 4, 2, 2]))

  def test_default_two = assert_equal(3, find_duplicate([3, 1, 3, 4, 2]))

  def test_default_three = assert_equal(3, find_duplicate([3, 3, 3, 3, 3]))
end
