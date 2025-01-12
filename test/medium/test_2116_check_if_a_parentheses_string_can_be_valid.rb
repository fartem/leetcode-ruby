# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2116_check_if_a_parentheses_string_can_be_valid'
require 'minitest/autorun'

class CheckIfAParenthesesStringCanBeValidTest < ::Minitest::Test
  def test_default_one = assert(can_be_valid('))()))', '010100'))

  def test_default_two = assert(can_be_valid('()()', '0000'))

  def test_default_three = assert(!can_be_valid(')', '0'))
end
