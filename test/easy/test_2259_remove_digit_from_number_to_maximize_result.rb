# rubocop:disable Style/FrozenStringLiteralComment, Style/DisableCopsWithinSourceCodeDirective

require_relative '../test_helper'
require_relative '../../lib/easy/2259_remove_digit_from_number_to_maximize_result'
require 'minitest/autorun'

class RemoveDigitFromNumberToMaximizeResultTest < ::Minitest::Test
  def test_default
    assert_equal('12', remove_digit('123', '3'))
    assert_equal('231', remove_digit('1231', '1'))
    assert_equal('51', remove_digit('551', '5'))
  end
end

# rubocop:enable Style/FrozenStringLiteralComment, Style/DisableCopsWithinSourceCodeDirective
