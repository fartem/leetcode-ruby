# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1089_duplicate_zeros'
require 'minitest/autorun'

class DuplicateZerosTest < ::Minitest::Test
  def test_default
    arr = [1, 0, 2, 3, 0, 4, 5, 0]
    duplicate_zeros(arr)
    assert_equal([1, 0, 0, 2, 3, 0, 0, 4], arr)

    arr = [1, 2, 3]
    duplicate_zeros(arr)
    assert_equal([1, 2, 3], arr)
  end

  def test_additional
    arr = [8, 4, 5, 0, 0, 0, 0, 7]
    duplicate_zeros(arr)
    assert_equal([8, 4, 5, 0, 0, 0, 0, 0], arr)
  end
end
