# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/659_split_array_into_consecutive_subsequences'
require 'minitest/autorun'

class SplitArrayIntoConsecutiveSubsequencesTest < ::Minitest::Test
  def test_default_one = assert(is_possible([1, 2, 3, 3, 4, 5]))

  def test_default_two = assert(is_possible([1, 2, 3, 3, 4, 4, 5, 5]))

  def test_default_three = assert(!is_possible([1, 2, 3, 4, 4, 5]))
end
