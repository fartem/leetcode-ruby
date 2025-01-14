# frozen_string_literal: false

require_relative '../test_helper'
require_relative '../../lib/hard/1106_parsing_a_boolean_expression'
require 'minitest/autorun'

class ParsingABooleanExpressionTest < ::Minitest::Test
  def test_default_one = assert(!parse_bool_expr('&(|(f))'))

  def test_default_two = assert(parse_bool_expr('|(f,f,f,t)'))

  def test_default_three = assert(parse_bool_expr('!(&(f,t))'))
end
