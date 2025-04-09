# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/3498_reverse_degree_of_a_string'
require 'minitest/autorun'

class ReverseDegreeOfAStringTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      148,
      reverse_degree(
        'abc'
      )
    )
  end

  def test_default_two
    assert_equal(
      160,
      reverse_degree(
        'zaza'
      )
    )
  end
end
