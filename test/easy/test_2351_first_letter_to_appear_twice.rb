# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2351_first_letter_to_appear_twice'
require 'minitest/autorun'

class FirstLetterToAppearTwiceTest < ::Minitest::Test
  def test_default_one = assert_equal('c', repeated_character('abccbaacz'))

  def test_default_two = assert_equal('d', repeated_character('abcdd'))

  def test_additional_one = assert_equal('0', repeated_character('abc'))
end
