# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1678_goal_parser_interpretation'
require 'minitest/autorun'

class GoalParserInterpretationTest < ::Minitest::Test
  def test_default_one = assert_equal('Goal', interpret('G()(al)'))

  def test_default_two = assert_equal('Gooooal', interpret('G()()()()(al)'))

  def test_default_three = assert_equal('alGalooG', interpret('(al)G(al)()()G'))
end
