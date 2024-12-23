# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/678_valid_parenthesis_string'
require 'minitest/autorun'

class ValidParenthesisStringTest < ::Minitest::Test
  def test_default_one = assert(check_valid_string('()'))

  def test_default_two = assert(check_valid_string('(*)'))

  def test_default_three = assert(check_valid_string('(*))'))
end
