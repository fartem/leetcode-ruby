# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2190_most_frequent_number_following_key_in_an_array'
require 'minitest/autorun'

class MostFrequentNumberFollowingKeyInAnArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      100,
      most_frequent(
        [1, 100, 200, 1, 100],
        1
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      most_frequent(
        [2, 2, 2, 2, 3],
        2
      )
    )
  end

  def test_additional_one
    assert_equal(
      -1,
      most_frequent(
        [1, 100, 200, 1, 100],
        30
      )
    )
  end
end
