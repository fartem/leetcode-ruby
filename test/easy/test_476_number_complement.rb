# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/476_number_complement'
require 'minitest/autorun'

class NumberComplementTest < ::Minitest::Test
  def test_default_one = assert_equal(2, find_complement(5))

  def test_default_two = assert_equal(0, find_complement(1))
end
