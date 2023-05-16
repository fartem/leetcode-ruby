# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/228_summary_ranges'
require 'minitest/autorun'

class SummaryRangesTest < ::Minitest::Test
  def test_default
    assert_equal(
      %w[0->2 4->5 7],
      summary_ranges(
        [0, 1, 2, 4, 5, 7]
      )
    )
    assert_equal(
      %w[0 2->4 6 8->9],
      summary_ranges(
        [0, 2, 3, 4, 6, 8, 9]
      )
    )
  end
end
