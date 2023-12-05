# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1790_check_if_one_string_swap_can_make_strings_equal'
require 'minitest/autorun'

class CheckIfOneStringSwapCanMakeStringsEqualTest < ::Minitest::Test
  def test_default
    assert(are_almost_equal('bank', 'kanb'))
    assert(!are_almost_equal('attack', 'defend'))
    assert(are_almost_equal('kelb', 'kelb'))
  end
end
