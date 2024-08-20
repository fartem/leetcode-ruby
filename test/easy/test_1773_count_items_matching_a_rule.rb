# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1773_count_items_matching_a_rule'
require 'minitest/autorun'

class CountItemsMatchingARuleTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      count_matches(
        [
          %w[phone blue pixel],
          %w[computer silver lenovo],
          %w[phone gold iphone]
        ],
        'color',
        'silver'
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      count_matches(
        [
          %w[phone blue pixel],
          %w[computer silver phone],
          %w[phone gold iphone]
        ],
        'type',
        'phone'
      )
    )
  end

  def test_additional_one
    assert_equal(
      1,
      count_matches(
        [
          %w[phone blue pixel],
          %w[computer silver phone],
          %w[phone gold iphone]
        ],
        'name',
        'phone'
      )
    )
  end
end
