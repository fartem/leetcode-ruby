# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1261_find_elements_in_a_contaminated_binary_tree'
require 'minitest/autorun'

class FindElementsInAContaminatedBinaryTreeTest < ::Minitest::Test
  def test_case_one
    find_elements = ::FindElements.new(
      ::TreeNode.build_tree(
        [-1, nil, -1]
      )
    )

    assert(!find_elements.find(1))
    assert(find_elements.find(2))
  end

  def test_case_two
    find_elements = ::FindElements.new(
      ::TreeNode.build_tree(
        [-1, -1, -1, -1, -1]
      )
    )

    assert(find_elements.find(1))
    assert(find_elements.find(3))
    assert(!find_elements.find(5))
  end

  def test_case_three
    find_elements = ::FindElements.new(
      ::TreeNode.build_tree(
        [-1, nil, -1, -1, nil, -1]
      )
    )

    assert(find_elements.find(2))
    assert(!find_elements.find(3))
    assert(!find_elements.find(4))
    assert(find_elements.find(5))
  end
end
