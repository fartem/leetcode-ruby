# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1417_reformat_the_string'
require 'minitest/autorun'

class ReformatTheStringTest < ::Minitest::Test
  def test_default_one = assert_equal('a0b1c2', reformat('a0b1c2'))

  def test_default_two = assert_equal('', reformat('leetcode'))

  def test_default_three = assert_equal('', reformat('1229857369'))
end
