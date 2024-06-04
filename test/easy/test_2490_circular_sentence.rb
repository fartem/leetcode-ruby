# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2490_circular_sentence'
require 'minitest/autorun'

class CircularSentenceTest < ::Minitest::Test
  def test_default
    assert(is_circular_sentence('leetcode exercises sound delightful'))
    assert(is_circular_sentence('eetcode'))
    assert(!is_circular_sentence('Leetcode is cool'))
  end
end
