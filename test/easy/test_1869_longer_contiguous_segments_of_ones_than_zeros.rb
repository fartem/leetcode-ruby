# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1869_longer_contiguous_segments_of_ones_than_zeros'
require 'minitest/autorun'

class LongerContiguousSegmentsOfOnesThanZerosTest < ::Minitest::Test
  def test_default
    assert(check_zero_ones('1101'))
    assert(!check_zero_ones('111000'))
    assert(!check_zero_ones('110100010'))
  end
end
