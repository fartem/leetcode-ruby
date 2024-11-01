# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/380_insert_delete_getrandom_o1'
require 'minitest/autorun'

class InsertDeleteGetRandomO1Test < ::Minitest::Test
  def test_default_one
    randomized_set = ::RandomizedSet.new
    assert(randomized_set.insert(1))
    assert(!randomized_set.remove(2))
    assert(randomized_set.insert(2))
    assert(randomized_set.get_random == 1 || randomized_set.get_random == 2)
    assert(randomized_set.remove(1))
    assert(!randomized_set.insert(2))
    assert_equal(2, randomized_set.get_random)
  end
end
