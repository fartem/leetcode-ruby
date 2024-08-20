# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/387_first_unique_character_in_a_string'
require 'minitest/autorun'

class FirstUniqueCharacterInAStringTest < ::Minitest::Test
  def test_default_one = assert_equal(0, first_uniq_char('leetcode'))

  def test_default_two = assert_equal(2, first_uniq_char('loveleetcode'))

  def test_default_three = assert_equal(-1, first_uniq_char('aabb'))
end
