# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1446_consecutive_characters'
require 'minitest/autorun'

class ConsecutiveCharactersTest < ::Minitest::Test
  def test_default
    assert_equal(2, max_power('leetcode'))
    assert_equal(5, max_power('abbcccddddeeeeedcba'))
  end
end
