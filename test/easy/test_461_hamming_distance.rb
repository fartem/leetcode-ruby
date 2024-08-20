# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/461_hamming_distance'
require 'minitest/autorun'

class HammingDistanceTest < ::Minitest::Test
  def test_default_one = assert_equal(2, hamming_distance(1, 4))

  def test_default_two = assert_equal(1, hamming_distance(3, 1))
end
