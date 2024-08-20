# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1869_longer_contiguous_segments_of_ones_than_zeros'
require 'minitest/autorun'

class LongerContiguousSegmentsOfOnesThanZerosTest < ::Minitest::Test
  def test_default_one = assert(check_zero_ones('1101'))

  def test_default_two = assert(!check_zero_ones('111000'))

  def test_default_three = assert(!check_zero_ones('110100010'))
end
