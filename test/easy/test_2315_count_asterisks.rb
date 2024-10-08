# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2315_count_asterisks'
require 'minitest/autorun'

class CountAsterisksTest < ::Minitest::Test
  def test_default_one = assert_equal(2, count_asterisks('l|*e*et|c**o|*de|'))

  def test_default_two = assert_equal(0, count_asterisks('iamprogrammer'))

  def test_default_three = assert_equal(5, count_asterisks('yo|uar|e**|b|e***au|tifu|l'))
end
