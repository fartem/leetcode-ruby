# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2138_divide_a_string_into_groups_of_size_k'
require 'minitest/autorun'

class DivideAStringIntoGroupsOfSizeKTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      %w[abc def ghi],
      divide_string(
        'abcdefghi',
        3,
        'x'
      )
    )
  end

  def test_default_two
    assert_equal(
      %w[abc def ghi jxx],
      divide_string(
        'abcdefghij',
        3,
        'x'
      )
    )
  end
end
