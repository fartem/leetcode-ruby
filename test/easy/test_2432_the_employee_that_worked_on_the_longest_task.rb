# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2432_the_employee_that_worked_on_the_longest_task'
require 'minitest/autorun'

class TheEmployeeThatWorkedOnTheLongestTaskTest < ::Minitest::Test
  def test_default
    assert_equal(1, hardest_worker(10, [[0, 3], [2, 5], [0, 9], [1, 15]]))
    assert_equal(3, hardest_worker(26, [[1, 1], [3, 7], [2, 12], [7, 17]]))
  end
end
