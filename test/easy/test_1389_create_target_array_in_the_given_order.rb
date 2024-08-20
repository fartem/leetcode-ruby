# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1389_create_target_array_in_the_given_order'
require 'minitest/autorun'

class CreateTargetArrayInTheGivenOrderTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [0, 4, 1, 3, 2],
      create_target_array(
        [0, 1, 2, 3, 4],
        [0, 1, 2, 2, 1]
      )
    )
  end

  def test_default_two
    assert_equal(
      [0, 1, 2, 3, 4],
      create_target_array(
        [1, 2, 3, 4, 0],
        [0, 1, 2, 3, 0]
      )
    )
  end

  def test_default_three
    assert_equal(
      [1],
      create_target_array(
        [1],
        [0]
      )
    )
  end
end
