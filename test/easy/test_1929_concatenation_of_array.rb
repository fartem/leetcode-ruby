# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1929_concatenation_of_array'
require 'minitest/autorun'

class ConcatenationOfArrayTest < ::Minitest::Test
  def test_default
    assert_equal([1, 2, 1, 1, 2, 1], get_concatenation([1, 2, 1]))
    assert_equal([1, 3, 2, 1, 1, 3, 2, 1], get_concatenation([1, 3, 2, 1]))
  end
end
