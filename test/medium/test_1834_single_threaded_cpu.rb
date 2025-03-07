# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1834_single_threaded_cpu'
require 'minitest/autorun'

class SingleThreasedCPUTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [0, 2, 3, 1],
      get_order(
        [
          [1, 2],
          [2, 4],
          [3, 2],
          [4, 1]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      [4, 3, 2, 0, 1],
      get_order(
        [
          [7, 10],
          [7, 12],
          [7, 5],
          [7, 4],
          [7, 2]
        ]
      )
    )
  end
end
