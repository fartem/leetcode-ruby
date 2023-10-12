# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1544_make_the_string_great'
require 'minitest/autorun'

class MakeTheStringGreatTest < ::Minitest::Test
  def test_default
    assert_equal('leetcode', make_good('leEeetcode'))
    assert_equal('', make_good('abBAcC'))
    assert_equal('s', make_good('s'))
  end
end
