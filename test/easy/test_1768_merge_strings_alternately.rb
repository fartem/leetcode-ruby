# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1768_merge_strings_alternately'
require 'minitest/autorun'

class MergeStringsAlternatelyTest < ::Minitest::Test
  def test_default_one = assert_equal('apbqcr', merge_alternately('abc', 'pqr'))

  def test_default_two = assert_equal('apbqrs', merge_alternately('ab', 'pqrs'))

  def test_default_three = assert_equal('apbqcd', merge_alternately('abcd', 'pq'))
end
