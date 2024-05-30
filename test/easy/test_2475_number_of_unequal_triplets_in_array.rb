# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2475_number_of_unequal_triplets_in_array'
require 'minitest/autorun'

class NumberOfUnequalTripletsInArrayTest < ::Minitest::Test
  def test_default
    assert_equal(3, unequal_triplets([4, 4, 2, 4, 3]))
    assert_equal(0, unequal_triplets([1, 1, 1, 1, 1]))
  end
end
