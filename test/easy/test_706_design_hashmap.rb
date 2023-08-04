# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/706_design_hashmap'
require 'minitest/autorun'

class DesignHashMapTest < ::Minitest::Test
  def test_default
    my_hashmap = ::MyHashMap.new
    my_hashmap.put(1, 1)
    my_hashmap.put(2, 2)

    assert_equal(1, my_hashmap.get(1))
    assert_equal(-1, my_hashmap.get(3))

    my_hashmap.put(2, 1)

    assert_equal(1, my_hashmap.get(2))

    my_hashmap.remove(2)

    assert_equal(-1, my_hashmap.get(2))
  end
end
