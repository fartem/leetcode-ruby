# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/832_flipping_an_image'
require 'minitest/autorun'

class FlippingAnImageTest < ::Minitest::Test
  def test_default
    assert_equal(
      [[1, 0, 0], [0, 1, 0], [1, 1, 1]],
      flip_and_invert_image([[1, 1, 0], [1, 0, 1], [0, 0, 0]])
    )
    assert_equal(
      [[1, 1, 0, 0], [0, 1, 1, 0], [0, 0, 0, 1], [1, 0, 1, 0]],
      flip_and_invert_image([[1, 1, 0, 0], [1, 0, 0, 1], [0, 1, 1, 1], [1, 0, 1, 0]])
    )
  end
end
