# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/657_robot_return_to_origin'
require 'minitest/autorun'

class RobotReturnToOriginTest < ::Minitest::Test
  def test_default_one = assert(judge_circle('UD'))

  def test_default_two = assert(!judge_circle('LL'))

  def test_additional_one = assert(judge_circle('RL'))
end
