# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/921_minimum_add_to_make_parentheses_valid'
require 'minitest/autorun'

class MinimumAddToMakeParenthesesValidTest < ::Minitest::Test
  def test_default_one = assert_equal(1, min_add_to_make_valid('())'))

  def test_default_two = assert_equal(3, min_add_to_make_valid('((('))
end
