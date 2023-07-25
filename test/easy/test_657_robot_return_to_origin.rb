# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/657_robot_return_to_origin'
require 'minitest/autorun'

class RobotReturnToOriginTest < ::Minitest::Test
  def test_default
    assert(judge_circle('UD'))
    assert(!judge_circle('LL'))
  end

  def test_additional
    assert(judge_circle('RL'))
  end
end
