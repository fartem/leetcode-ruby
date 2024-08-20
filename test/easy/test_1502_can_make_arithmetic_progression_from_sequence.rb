# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1502_can_make_arithmetic_progression_from_sequence'
require 'minitest/autorun'

class CanMakeArithmeticProgressionFromSequenceTest < ::Minitest::Test
  def test_default_one = assert(can_make_arithmetic_progression([3, 5, 1]))

  def test_default_two = assert(!can_make_arithmetic_progression([1, 2, 4]))
end
