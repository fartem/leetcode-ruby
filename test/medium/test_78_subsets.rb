# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/78_subsets'
require 'minitest/autorun'

class SubsetsTest < ::Minitest::Test
  def test_default
    assert_equal(
      [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]],
      subsets([1, 2, 3])
    )
    assert_equal([[], [0]], subsets([0]))
  end
end
