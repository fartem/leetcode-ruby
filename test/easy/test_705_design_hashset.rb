# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/705_design_hashset'
require 'minitest/autorun'

class DesignHashSetTest < ::Minitest::Test
  def test_default
    my_hashset = ::MyHashSet.new
    my_hashset.add(1)
    my_hashset.add(2)

    assert(my_hashset.contains(1))
    assert(!my_hashset.contains(3))

    my_hashset.add(2)

    assert(my_hashset.contains(2))

    my_hashset.remove(2)

    assert(!my_hashset.contains(2))
  end
end
