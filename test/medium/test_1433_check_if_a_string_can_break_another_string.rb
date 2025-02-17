# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1433_check_if_a_string_can_break_another_string'
require 'minitest/autorun'

class CheckIfAStringCanBreakAnotherStringTest < ::Minitest::Test
  def test_default_one = assert(check_if_can_break('abc', 'xya'))

  def test_default_two = assert(!check_if_can_break('abe', 'acd'))

  def test_default_three = assert(check_if_can_break('leetcodee', 'interview'))
end
