# frozen_string_literal: true

require_relative '../../lib/easy/191_number_of_1_bits'
require 'minitest/autorun'

class NumberOf1BitsTest < ::Minitest::Test
  def test_default
    assert_equal(3, hamming_weight(11))
    assert_equal(1, hamming_weight(128))
    assert_equal(31, hamming_weight(4_294_967_293))
  end
end
