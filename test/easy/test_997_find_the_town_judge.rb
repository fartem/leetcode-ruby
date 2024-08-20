# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/997_find_the_town_judge'
require 'minitest/autorun'

class FindTheTownJudgeTest < ::Minitest::Test
  def test_default_one = assert_equal(2, find_judge(2, [[1, 2]]))

  def test_default_two = assert_equal(3, find_judge(3, [[1, 3], [2, 3]]))

  def test_default_three = assert_equal(-1, find_judge(3, [[1, 3], [2, 3], [3, 1]]))
end
