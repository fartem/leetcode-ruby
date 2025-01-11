# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1400_construct_k_palindrome_strings'
require 'minitest/autorun'

class ConstructKPalindromeStringsTest < ::Minitest::Test
  def test_default_one = assert(can_construct_k_palindrome('annabelle', 2))

  def test_default_two = assert(!can_construct_k_palindrome('leetcode', 3))

  def test_default_three = assert(can_construct_k_palindrome('true', 4))
end
