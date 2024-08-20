# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1566_detect_pattern_of_length_m_repeated_k_or_more_times'
require 'minitest/autorun'

class DetectPatternOnLengthMRepeatedKOrMoreTimesTest < ::Minitest::Test
  def test_default_one = assert(contains_pattern([1, 2, 4, 4, 4, 4], 1, 3))

  def test_default_two = assert(contains_pattern([1, 2, 1, 2, 1, 1, 1, 3], 2, 2))

  def test_default_three = assert(!contains_pattern([1, 2, 1, 2, 1, 3], 2, 3))
end
