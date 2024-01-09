# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1925_count_square_sum_triples'
require 'minitest/autorun'

class CountSquareSumTriplesTest < ::Minitest::Test
  def test_default
    assert_equal(2, count_triples(5))
    assert_equal(4, count_triples(10))
  end
end
