# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/17_letter_combinations_of_a_phone_number'
require 'minitest/autorun'

class LetterCombinationsOfAPhoneNumberTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      %w[ad ae af bd be bf cd ce cf],
      letter_combinations('23')
    )
  end

  def test_default_two = assert_equal([], letter_combinations(''))

  def test_default_three
    assert_equal(
      %w[a b c],
      letter_combinations('2')
    )
  end
end
