# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/219_contains_duplicate_ii'
require 'minitest/autorun'

class ContainsDuplicateIITest < ::Minitest::Test
  def test_default_one = assert(contains_nearby_duplicate([1, 2, 3, 1], 3))

  def test_default_two = assert(contains_nearby_duplicate([1, 0, 1, 1], 1))

  def test_default_three = assert(!contains_nearby_duplicate([1, 2, 3, 1, 2, 3], 2))
end
