# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/434_number_of_segments_in_a_string'
require 'minitest/autorun'

class NumberOfSegmentsInAStringTest < ::Minitest::Test
  def test_default
    assert_equal(5, count_segments('Hello, my name is John'))
    assert_equal(1, count_segments('Hello'))
  end
end
