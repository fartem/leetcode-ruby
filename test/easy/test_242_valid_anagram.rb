# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/242_valid_anagram'
require 'minitest/autorun'

class ValidAnagramTest < ::Minitest::Test
  def test_default_one = assert(is_anagram('anagram', 'nagaram'))

  def test_default_two = assert(!is_anagram('rat', 'car'))
end
