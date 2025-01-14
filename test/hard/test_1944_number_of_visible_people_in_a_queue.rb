# frozen_string_literal: false

require_relative '../test_helper'
require_relative '../../lib/hard/1944_number_of_visible_people_in_a_queue'
require 'minitest/autorun'

class NumberOfVisiblePeopleInAQueueTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [3, 1, 2, 1, 1, 0],
      can_see_persons_count(
        [10, 6, 8, 5, 11, 9]
      )
    )
  end

  def test_default_two
    assert_equal(
      [4, 1, 1, 1, 0],
      can_see_persons_count(
        [5, 1, 2, 3, 10]
      )
    )
  end
end
