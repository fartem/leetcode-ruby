# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2351_first_letter_to_appear_twice'
require 'minitest/autorun'

class FirstLetterToAppearTwiceTest < ::Minitest::Test
  def test_default
    assert_equal('c', repeated_character('abccbaacz'))
    assert_equal('d', repeated_character('abcdd'))
  end

  def test_additional
    assert_equal('0', repeated_character('abc'))
  end
end
