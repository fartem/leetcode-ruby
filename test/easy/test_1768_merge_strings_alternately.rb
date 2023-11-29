# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1768_merge_strings_alternately'
require 'minitest/autorun'

class MergeStringsAlternatelyTest < ::Minitest::Test
  def test_default
    assert_equal('apbqcr', merge_alternately('abc', 'pqr'))
    assert_equal('apbqrs', merge_alternately('ab', 'pqrs'))
    assert_equal('apbqcd', merge_alternately('abcd', 'pq'))
  end
end
