# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/347_top_k_frequent_elements'
require 'minitest/autorun'

class TopKFrequentElementsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [1, 2],
      top_k_frequent(
        [1, 1, 1, 2, 2, 3],
        2
      )
    )
  end

  def test_default_two
    assert_equal(
      [1],
      top_k_frequent(
        [1],
        1
      )
    )
  end
end
