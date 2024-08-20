# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/521_longest_uncommon_subsequence_i'
require 'minitest/autorun'

class LongestUncommonSubsequenceITest < ::Minitest::Test
  def test_default_one = assert_equal(3, find_lu_slength('aba', 'cdc'))

  def test_default_two = assert_equal(3, find_lu_slength('aaa', 'bbb'))

  def test_default_three = assert_equal(-1, find_lu_slength('aaa', 'aaa'))

  def test_additional_one = assert_equal(3, find_lu_slength('abc', 'bca'))
end
