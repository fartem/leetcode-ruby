# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1408_string_matching_in_an_array'
require 'minitest/autorun'

class StringMatchingInAnArrayTest < ::Minitest::Test
  def test_default_one = assert_equal(%w[as hero], string_matching(%w[mass as hero superhero]))

  def test_default_two = assert_equal(%w[et code], string_matching(%w[leetcode et code]))

  def test_default_three = assert_equal([], string_matching(%w[blue green bu]))
end
