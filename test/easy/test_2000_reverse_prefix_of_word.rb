# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2000_reverse_prefix_of_word'
require 'minitest/autorun'

class ReversePrefixOfWordTest < ::Minitest::Test
  def test_default
    assert_equal('dcbaefd', reverse_prefix('abcdefd', 'd'))
    assert_equal('zxyxxe', reverse_prefix('xyxzxe', 'z'))
    assert_equal('abcd', reverse_prefix('abcd', 'z'))
  end
end
