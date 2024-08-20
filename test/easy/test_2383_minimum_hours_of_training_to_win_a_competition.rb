# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2383_minimum_hours_of_training_to_win_a_competition'
require 'minitest/autorun'

class MinimumHoursOfTrainingToWinACompetitionTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      8,
      min_number_of_hours(
        5,
        3,
        [1, 4, 3, 2],
        [2, 6, 3, 1]
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      min_number_of_hours(
        2,
        4,
        [1],
        [3]
      )
    )
  end
end
