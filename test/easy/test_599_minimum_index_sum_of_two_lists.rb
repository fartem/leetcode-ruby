# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/599_minimum_index_sum_of_two_lists'
require 'minitest/autorun'

class MinimumIndexSumOfTwoListsTest < ::Minitest::Test
  def test_default
    assert_equal(
      ['Shogun'],
      find_restaurant(
        ['Shogun', 'Tapioca Express', 'Burger King', 'KFC'],
        ['Piatti', 'The Grill at Torrey Pines', 'Hungry Hunter Steakhouse', 'Shogun']
      )
    )
    assert_equal(
      ['Shogun'],
      find_restaurant(
        ['Shogun', 'Tapioca Express', 'Burger King', 'KFC'],
        ['KFC', 'Shogun', 'Burger King']
      )
    )
    assert_equal(
      %w[sad happy],
      find_restaurant(
        %w[happy sad good],
        %w[sad happy good]
      )
    )
  end
end
