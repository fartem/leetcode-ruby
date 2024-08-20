# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1652_defuse_the_bomb'
require 'minitest/autorun'

class DefuseTheBombTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [12, 10, 16, 13],
      decrypt(
        [5, 7, 1, 4],
        3
      )
    )
  end

  def test_default_two
    assert_equal(
      [0, 0, 0, 0],
      decrypt(
        [1, 2, 3, 4],
        0
      )
    )
  end

  def test_default_three
    assert_equal(
      [12, 5, 6, 13],
      decrypt(
        [2, 4, 9, 3],
        -2
      )
    )
  end
end
