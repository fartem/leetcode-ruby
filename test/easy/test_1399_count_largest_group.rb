# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1399_count_largest_group'
require 'minitest/autorun'

class CountLargestGroupTest < ::Minitest::Test
  def test_default
    assert_equal(4, count_largest_group(13))
    assert_equal(2, count_largest_group(2))
  end
end
