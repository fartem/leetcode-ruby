# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2255_count_prefixes_of_a_given_string'
require 'minitest/autorun'

class CountPrefixesOfAGivenStringTest < ::Minitest::Test
  def test_default
    assert_equal(3, count_prefixes(%w[a b c ab bc abc], 'abc'))
    assert_equal(2, count_prefixes(%w[a a], 'aa'))
  end
end
