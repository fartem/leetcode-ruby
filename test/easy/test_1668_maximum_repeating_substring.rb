# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1668_maximum_repeating_substring'
require 'minitest/autorun'

class MaximumRepeatingSubstringTest < ::Minitest::Test
  def test_default_one = assert_equal(2, max_repeating('ababc', 'ab'))

  def test_default_two = assert_equal(1, max_repeating('ababc', 'ba'))

  def test_default_three = assert_equal(0, max_repeating('ababc', 'ac'))
end
