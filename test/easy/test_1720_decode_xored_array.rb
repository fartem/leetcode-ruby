# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1720_decode_xored_array'
require 'minitest/autorun'

class DecodeXORedArrayTest < ::Minitest::Test
  def test_default
    assert_equal([1, 0, 2, 1], decode_xored([1, 2, 3], 1))
    assert_equal([4, 2, 0, 7, 4], decode_xored([6, 2, 7, 3], 4))
  end
end
