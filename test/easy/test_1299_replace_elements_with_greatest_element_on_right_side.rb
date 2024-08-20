# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1299_replace_elements_with_greatest_element_on_right_side'
require 'minitest/autorun'

class ReplaceElementsWithGreatestElementOnRightSideTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [18, 6, 6, 6, 1, -1],
      replace_elements(
        [17, 18, 5, 4, 6, 1]
      )
    )
  end

  def test_default_two
    assert_equal(
      [-1],
      replace_elements(
        [400]
      )
    )
  end
end
