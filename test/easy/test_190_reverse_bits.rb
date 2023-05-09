# frozen_string_literal: true

require_relative '../../lib/easy/190_reverse_bits'
require 'minitest/autorun'

class ReverseBitsTest < ::Minitest::Test
  def test_default
    assert_equal(
      964_176_192,
      reverse_bits(43_261_596)
    )
    assert_equal(
      3_221_225_471,
      reverse_bits(4_294_967_293)
    )
  end
end
