# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/474_ones_and_zeroes'
require 'minitest/autorun'

class OnesAndZerosTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      4,
      find_max_form(
        %w[10 0001 111001 1 0],
        5,
        3
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      find_max_form(
        %w[10 0 1],
        1,
        1
      )
    )
  end
end
