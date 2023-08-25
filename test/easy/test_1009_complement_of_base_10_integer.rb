# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1009_complement_of_base_10_integer'
require 'minitest/autorun'

class ComplementOfBase10IntegerTest < ::Minitest::Test
  def test_default
    assert_equal(2, bitwise_complement(5))
    assert_equal(0, bitwise_complement(7))
    assert_equal(5, bitwise_complement(10))
  end
end
