# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/3223_minimum_length_of_string_after_operations'
require 'minitest/autorun'

class MinimumLengthOfStringAfterOperationsTest < ::Minitest::Test
  def test_default_one = assert_equal(5, minimum_length('abaacbcbb'))

  def test_default_two = assert_equal(2, minimum_length('aa'))
end
