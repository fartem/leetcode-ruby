# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1021_remove_outermost_parentheses'
require 'minitest/autorun'

class RemoveOutermostParenthesesTest < ::Minitest::Test
  def test_default
    assert_equal('()()()', remove_outer_parentheses('(()())(())'))
    assert_equal('()()()()(())', remove_outer_parentheses('(()())(())(()(()))'))
    assert_equal('', remove_outer_parentheses('()()'))
  end
end
