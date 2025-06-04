# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2710_remove_trailing_zeros_from_a_string'
require 'minitest/autorun'

class RemoveTrailingZerosFromAStringTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      '512301',
      remove_trailing_zeros(
        '51230100'
      )
    )
  end

  def test_default_two
    assert_equal(
      '123',
      remove_trailing_zeros(
        '123'
      )
    )
  end
end
