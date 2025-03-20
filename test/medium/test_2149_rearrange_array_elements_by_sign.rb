# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2149_rearrange_array_elements_by_sign'
require 'minitest/autorun'

class RearrangeArrayElementsBySignTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [3, -2, 1, -5, 2, -4],
      rearrange_array(
        [3, 1, -2, -5, 2, -4]
      )
    )
  end

  def test_default_two
    assert_equal(
      [1, -1],
      rearrange_array(
        [-1, 1]
      )
    )
  end
end
