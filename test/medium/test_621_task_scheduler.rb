# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/621_task_scheduler'
require 'minitest/autorun'

class TaskSchedulerTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      8,
      least_interval(
        %w[A A A B B B],
        2
      )
    )
  end

  def test_default_two
    assert_equal(
      6,
      least_interval(
        %w[A C A B D B],
        1
      )
    )
  end

  def test_default_three
    assert_equal(
      10,
      least_interval(
        %w[A A A B B B],
        3
      )
    )
  end
end
