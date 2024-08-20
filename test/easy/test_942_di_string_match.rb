# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/942_di_string_match'
require 'minitest/autorun'

class DIStringMatchTest < ::Minitest::Test
  def test_default_one = assert_equal([0, 4, 1, 3, 2], di_string_match('IDID'))

  def test_default_two = assert_equal([0, 1, 2, 3], di_string_match('III'))

  def test_default_three = assert_equal([3, 2, 0, 1], di_string_match('DDI'))
end
