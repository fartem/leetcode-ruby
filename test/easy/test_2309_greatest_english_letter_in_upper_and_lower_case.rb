# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2309_greatest_english_letter_in_upper_and_lower_case'
require 'minitest/autorun'

class GreatestEnglishLetterInUpperAndLowerCaseTest < ::Minitest::Test
  def test_default
    assert_equal('E', greatest_letter('lEeTcOdE'))
    assert_equal('R', greatest_letter('arRAzFif'))
    assert_equal('', greatest_letter('AbCdEfGhIjK'))
  end
end
