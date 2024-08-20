# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2490_circular_sentence'
require 'minitest/autorun'

class CircularSentenceTest < ::Minitest::Test
  def test_default_one = assert(is_circular_sentence('leetcode exercises sound delightful'))

  def test_default_two = assert(is_circular_sentence('eetcode'))

  def test_default_three = assert(!is_circular_sentence('Leetcode is cool'))
end
