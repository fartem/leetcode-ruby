# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2363_merge_similar_items'
require 'minitest/autorun'

class MergeSimilarItemsTest < ::Minitest::Test
  def test_default
    assert_equal(
      [[1, 6], [3, 9], [4, 5]],
      merge_similar_items(
        [[1, 1], [4, 5], [3, 8]],
        [[3, 1], [1, 5]]
      )
    )
    assert_equal(
      [[1, 4], [2, 4], [3, 4]],
      merge_similar_items(
        [[1, 1], [3, 2], [2, 3]],
        [[2, 1], [3, 2], [1, 3]]
      )
    )
    assert_equal(
      [[1, 7], [2, 4], [7, 1]],
      merge_similar_items(
        [[1, 3], [2, 2]],
        [[7, 1], [2, 2], [1, 4]]
      )
    )
  end
end
