# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/476_number_complement'
require 'minitest/autorun'

class NumberComplementTest < ::Minitest::Test
  def test_default
    assert_equal(2, find_complement(5))
    assert_equal(0, find_complement(1))
  end
end
