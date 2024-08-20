# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1700_number_of_students_unable_to_eat_lunch'
require 'minitest/autorun'

class NumberOfStudentsUnableToEatLunchTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      0,
      count_students(
        [1, 1, 0, 0],
        [0, 1, 0, 1]
      )
    )
  end

  def test_default_two
    assert_equal(
      3,
      count_students(
        [1, 1, 1, 0, 0, 1],
        [1, 0, 0, 0, 1, 1]
      )
    )
  end
end
