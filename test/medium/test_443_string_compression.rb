# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/443_string_compression'
require 'minitest/autorun'

class StringCompressionTest < ::Minitest::Test
  def test_default_one
    input = %w[a a b b c c c]

    assert_equal(6, compress(input))
    assert_equal(%w[a 2 b 2 c 3 c], input)
  end

  def test_default_two
    input = ['a']

    assert_equal(1, compress(input))
    assert_equal(['a'], input)
  end

  def test_default_three
    input = %w[a b b b b b b b b b b b b]

    assert_equal(4, compress(input))
    assert_equal(%w[a b 1 2 b b b b b b b b b], input)
  end
end
