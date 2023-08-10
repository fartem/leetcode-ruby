# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/744_find_smallest_letter_greater_than_target'
require 'minitest/autorun'

class FindSmallestLetterGreaterThanTargetTest < ::Minitest::Test
  def test_default
    assert_equal('c', next_greatest_letter(%w[c f j], 'a'))
    assert_equal('f', next_greatest_letter(%w[c f j], 'c'))
    assert_equal('x', next_greatest_letter(%w[x x y y], 'z'))
  end
end
