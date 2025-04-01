# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2429_minimize_xor'
require 'minitest/autorun'

class MinimizeXORTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      minimize_xor(3, 5)
    )
  end

  def test_default_two
    assert_equal(
      3,
      minimize_xor(1, 12)
    )
  end

  def test_additional_one
    assert_equal(
      24,
      minimize_xor(25, 72)
    )
  end
end
