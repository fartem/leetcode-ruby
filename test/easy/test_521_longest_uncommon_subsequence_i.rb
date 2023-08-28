# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/521_longest_uncommon_subsequence_i'
require 'minitest/autorun'

class LongestUncommonSubsequenceITest < ::Minitest::Test
  def test_default
    # assert_equal(3, find_lu_slength('aba', 'cdc'))
    # assert_equal(3, find_lu_slength('aaa', 'bbb'))
    # assert_equal(-1, find_lu_slength('aaa', 'aaa'))
  end

  def test_additional
    assert_equal(3, find_lu_slength('abc', 'bca'))
  end
end
