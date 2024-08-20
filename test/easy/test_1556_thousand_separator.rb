# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1556_thousand_separator'
require 'minitest/autorun'

class ThousandSeparatorTest < ::Minitest::Test
  def test_default_one = assert_equal('987', thousand_separator(987))

  def test_default_two = assert_equal('1.234', thousand_separator(1234))
end
