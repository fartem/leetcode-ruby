# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1961_check_if_string_is_a_prefix_of_array'
require 'minitest/autorun'

class CheckIfStringIsAPrefixOfArrayTest < ::Minitest::Test
  def test_default
    assert(is_prefix_string('iloveleetcode', %w[i love leetcode apples]))
    assert(!is_prefix_string('iloveleetcode', %w[apples i love leetcode]))
  end
end
