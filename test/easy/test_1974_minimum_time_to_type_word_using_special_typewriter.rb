# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1974_minimum_time_to_type_word_using_special_typewriter'
require 'minitest/autorun'

class MinimumTimeToTypeWordUsingSpecialTypewriterTest < ::Minitest::Test
  def test_default_one = assert_equal(5, min_time_to_type('abc'))

  def test_default_two = assert_equal(7, min_time_to_type('bza'))

  def test_default_three = assert_equal(34, min_time_to_type('zjpc'))
end
