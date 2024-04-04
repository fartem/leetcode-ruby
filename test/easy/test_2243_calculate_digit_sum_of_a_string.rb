# rubocop:disable Style/FrozenStringLiteralComment, Style/DisableCopsWithinSourceCodeDirective

require_relative '../test_helper'
require_relative '../../lib/easy/2243_calculate_digit_sum_of_a_string'
require 'minitest/autorun'

class CalculateDigitSumOfAStringTest < ::Minitest::Test
  def test_default
    assert_equal('135', digit_sum('11111222223', 3))
    assert_equal('000', digit_sum('00000000', 3))
  end
end

# rubocop:enable Style/FrozenStringLiteralComment, Style/DisableCopsWithinSourceCodeDirective
