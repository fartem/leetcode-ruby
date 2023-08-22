# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/868_binary_gap'
require 'minitest/autorun'

class BinaryGapTest < ::Minitest::Test
  def test_default
    assert_equal(2, binary_gap(22))
    assert_equal(0, binary_gap(8))
    assert_equal(2, binary_gap(5))
  end
end
