# rubocop:disable Style/FrozenStringLiteralComment

require_relative '../test_helper'
require_relative '../../lib/easy/2259_remove_digit_from_number_to_maximize_result'
require 'minitest/autorun'

class RemoveDigitFromNumberToMaximizeResultTest < ::Minitest::Test
  def test_default_one = assert_equal('12', remove_digit('123', '3'))

  def test_default_two = assert_equal('231', remove_digit('1231', '1'))

  def test_default_three = assert_equal('51', remove_digit('551', '5'))
end

# rubocop:enable Style/FrozenStringLiteralComment
