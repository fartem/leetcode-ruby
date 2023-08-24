# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/953_verifying_an_alien_dictionary'
require 'minitest/autorun'

class VerifyingAnAlienDictionaryTest < ::Minitest::Test
  def test_default
    assert(is_alien_sorted(%w[hello leetcode], 'hlabcdefgijkmnopqrstuvwxyz'))
    assert(!is_alien_sorted(%w[word world row], 'worldabcefghijkmnpqstuvxyz'))
    assert(!is_alien_sorted(%w[apple app], 'abcdefghijklmnopqrstuvwxyz'))
  end
end
