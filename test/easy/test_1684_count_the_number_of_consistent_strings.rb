# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1684_count_the_number_of_consistent_strings'
require 'minitest/autorun'

class CountTheNumberOfConsistentStringsTest < ::Minitest::Test
  def test_default
    assert_equal(2, count_consistent_strings('ab', %w[ad bd aaab baa badab]))
    assert_equal(7, count_consistent_strings('abc', %w[a b c ab ac bc abc]))
    assert_equal(4, count_consistent_strings('cad', %w[cc acd b ba bac bad ac d]))
  end
end
