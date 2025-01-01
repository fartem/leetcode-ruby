# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/hard/10_regular_expression_matching'
require 'minitest/autorun'

class RegularExpressionMatchingTest < ::Minitest::Test
  def test_default_one = assert(!is_match('aa', 'a'))

  def test_default_two = assert(is_match('aa', 'a*'))

  def test_default_three = assert(is_match('ab', '.*'))
end
