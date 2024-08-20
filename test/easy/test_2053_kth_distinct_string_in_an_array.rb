# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2053_kth_distinct_string_in_an_array'
require 'minitest/autorun'

class KthDistinctStringInAnArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'a',
      kth_distinct(
        %w[d b c b c a],
        2
      )
    )
  end

  def test_default_two
    assert_equal(
      'aaa',
      kth_distinct(
        %w[aaa aa a],
        1
      )
    )
  end

  def test_default_three
    assert_equal(
      '',
      kth_distinct(
        %w[a b a],
        3
      )
    )
  end
end
