# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/682_baseball_game'
require 'minitest/autorun'

class BaseballGameTest < ::Minitest::Test
  def test_default_one = assert_equal(30, cal_points(%w[5 2 C D +]))

  def test_default_two = assert_equal(27, cal_points(%w[5 -2 4 C D 9 + +]))

  def test_default_three = assert_equal(0, cal_points(%w[1 C]))
end
