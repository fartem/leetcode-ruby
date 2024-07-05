# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/22_generate_parentheses'
require 'minitest/autorun'

class GenerateParenthesesTest < ::Minitest::Test
  def test_default
    assert_equal(
      %w[()()() ()(()) (())() (()()) ((()))],
      generate_parenthesis(3)
    )
    assert_equal(['()'], generate_parenthesis(1))
  end
end
