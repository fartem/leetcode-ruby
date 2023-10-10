# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1534_count_good_triplets'
require 'minitest/autorun'

class CountGoodTripletsTest < ::Minitest::Test
  def test_default
    assert_equal(4, count_good_triplets([3, 0, 1, 1, 9, 7], 7, 2, 3))
    assert_equal(0, count_good_triplets([1, 1, 2, 2, 3], 0, 0, 1))
  end
end
