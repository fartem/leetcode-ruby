# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/704_binary_search'
require 'minitest/autorun'

class BinarySearchTest < ::Minitest::Test
  def test_default
    assert_equal(4, search([-1, 0, 3, 5, 9, 12], 9))
    assert_equal(-1, search([-1, 0, 3, 5, 9, 12], 2))
  end
end
