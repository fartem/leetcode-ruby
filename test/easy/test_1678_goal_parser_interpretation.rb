# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1678_goal_parser_interpretation'
require 'minitest/autorun'

class GoalParserInterpretationTest < ::Minitest::Test
  def test_default
    assert_equal('Goal', interpret('G()(al)'))
    assert_equal('Gooooal', interpret('G()()()()(al)'))
    assert_equal('alGalooG', interpret('(al)G(al)()()G'))
  end
end
