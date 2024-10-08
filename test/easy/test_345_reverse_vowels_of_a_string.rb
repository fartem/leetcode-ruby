# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/345_reverse_vowels_of_a_string'
require 'minitest/autorun'

class ReverseVowelsOfAStringTest < ::Minitest::Test
  def test_default_one = assert_equal('holle', reverse_vowels('hello'))

  def test_default_two = assert_equal('leotcede', reverse_vowels('leetcode'))
end
