# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/219_contains_duplicate_ii'
require 'minitest/autorun'

class ContainsDuplicateIITest < ::Minitest::Test
  def test_default
    assert(contains_nearby_duplicate([1, 2, 3, 1], 3))
    assert(contains_nearby_duplicate([1, 0, 1, 1], 1))
    assert(!contains_nearby_duplicate([1, 2, 3, 1, 2, 3], 2))
  end
end
