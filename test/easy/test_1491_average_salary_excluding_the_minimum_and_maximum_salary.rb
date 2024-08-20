# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1491_average_salary_excluding_the_minimum_and_maximum_salary'
require 'minitest/autorun'

class AverageSalaryExcludingTheMinimumAndMaximumSalaryTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2500.00000,
      average(
        [4000, 3000, 1000, 2000]
      )
    )
  end

  def test_default_two
    assert_equal(
      2000.00000,
      average(
        [1000, 2000, 3000]
      )
    )
  end
end
