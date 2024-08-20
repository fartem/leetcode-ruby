# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2119_a_number_after_a_double_reversal'
require 'minitest/autorun'

class ANumberAfterADoubleReversalTest < ::Minitest::Test
  def test_default_one = assert(is_same_after_reversals(526))

  def test_default_two = assert(!is_same_after_reversals(1800))

  def test_default_three = assert(is_same_after_reversals(0))
end
