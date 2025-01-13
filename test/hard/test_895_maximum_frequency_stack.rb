# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/hard/895_maximum_frequency_stack'
require 'minitest/autorun'

class MaximumFrequencyStackTest < ::Minitest::Test
  def test_default_one
    freq_stack = ::FreqStack.new
    freq_stack.push(5)
    freq_stack.push(7)
    freq_stack.push(5)
    freq_stack.push(7)
    freq_stack.push(4)
    freq_stack.push(5)

    assert_equal(5, freq_stack.pop)
    assert_equal(7, freq_stack.pop)
    assert_equal(5, freq_stack.pop)
    assert_equal(4, freq_stack.pop)
  end
end
