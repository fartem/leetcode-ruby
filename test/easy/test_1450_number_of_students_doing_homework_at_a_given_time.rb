# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1450_number_of_students_doing_homework_at_a_given_time'
require 'minitest/autorun'

class NumberOfStudentsDoingHomeworkAtAGivenTimeTest < ::Minitest::Test
  def test_default
    assert_equal(1, busy_student([1, 2, 3], [3, 2, 7], 4))
    assert_equal(1, busy_student([4], [4], 4))
  end
end
