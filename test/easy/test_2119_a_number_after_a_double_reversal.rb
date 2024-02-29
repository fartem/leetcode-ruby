# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2119_a_number_after_a_double_reversal'
require 'minitest/autorun'

class ANumberAfterADoubleReversalTest < ::Minitest::Test
  def test_default
    assert(is_same_after_reversals(526))
    assert(!is_same_after_reversals(1800))
    assert(is_same_after_reversals(0))
  end
end
