# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/941_valid_mountain_array'
require 'minitest/autorun'

class ValidMountainArrayTest < ::Minitest::Test
  def test_default
    assert(!valid_mountain_array([2, 1]))
    assert(!valid_mountain_array([3, 5, 5]))
    assert(valid_mountain_array([0, 3, 2, 1]))
  end
end
