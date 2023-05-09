# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/20_valid_parentheses'
require 'minitest/autorun'

class ValidParenthesesTest < ::Minitest::Test
  def test_default
    assert(is_valid('()'))
    assert(is_valid('()[]{}'))
    assert(!is_valid('(]'))
  end
end
