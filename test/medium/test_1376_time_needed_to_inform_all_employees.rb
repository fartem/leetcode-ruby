# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1376_time_needed_to_inform_all_employees'
require 'minitest/autorun'

class TimeNeededToInformAllEmployeesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      num_of_minutes(
        6,
        2,
        [2, 2, -1, 2, 2, 2],
        [0, 0, 1, 0, 0, 0]
      )
    )
  end
end
