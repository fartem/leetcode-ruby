# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/647_palindromic_substrings'
require 'minitest/autorun'

class PalindromicSubstringsTest < ::Minitest::Test
  def test_default_one = assert_equal(3, count_substrings('abc'))

  def test_default_two = assert_equal(6, count_substrings('aaa'))
end
