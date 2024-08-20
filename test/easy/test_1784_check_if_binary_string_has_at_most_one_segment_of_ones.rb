# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1784_check_if_binary_string_has_at_most_one_segment_of_ones'
require 'minitest/autorun'

class CheckIfBinaryStringHasAtMostOneSegmentOfOnesTest < ::Minitest::Test
  def test_default_one = assert(!check_ones_segment('1001'))

  def test_default_two = assert(check_ones_segment('110'))
end
