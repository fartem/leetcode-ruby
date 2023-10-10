# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1528_shuffle_string'
require 'minitest/autorun'

class ShuffleStringTest < ::Minitest::Test
  def test_default
    assert_equal('leetcode', restore_string('codeleet', [4, 5, 6, 7, 0, 2, 1, 3]))
    assert_equal('abc', restore_string('abc', [0, 1, 2]))
  end
end
