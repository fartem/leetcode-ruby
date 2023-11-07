# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1668_maximum_repeating_substring'
require 'minitest/autorun'

class MaximumRepeatingSubstringTest < ::Minitest::Test
  def test_default
    assert_equal(2, max_repeating('ababc', 'ab'))
    assert_equal(1, max_repeating('ababc', 'ba'))
    assert_equal(0, max_repeating('ababc', 'ac'))
  end
end
