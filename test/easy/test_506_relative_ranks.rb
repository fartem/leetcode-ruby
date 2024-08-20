# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/506_relative_ranks'
require 'minitest/autorun'

class RelativeRanksTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        'Gold Medal',
        'Silver Medal',
        'Bronze Medal',
        '4',
        '5'
      ],
      find_relative_ranks(
        [5, 4, 3, 2, 1]
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        'Gold Medal',
        '5',
        'Bronze Medal',
        'Silver Medal',
        '4'
      ],
      find_relative_ranks(
        [10, 3, 8, 9, 4]
      )
    )
  end
end
