# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/96_unique_binary_search_trees'
require 'minitest/autorun'

class UniqueBinarySearchTreesTest < ::Minitest::Test
  def test_default
    assert_equal(5, num_trees(3))
    assert_equal(1, num_trees(1))
  end
end
