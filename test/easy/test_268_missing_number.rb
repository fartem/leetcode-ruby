# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/268_missing_number'
require 'minitest/autorun'

class MissingNumberTest < ::Minitest::Test
  def test_default_one = assert_equal(2, missing_number([3, 0, 1]))

  def test_default_two = assert_equal(2, missing_number([0, 1]))

  def test_default_three = assert_equal(8, missing_number([9, 6, 4, 2, 3, 5, 7, 0, 1]))
end
