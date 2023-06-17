# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/290_word_pattern'
require 'minitest/autorun'

class WordPatternTest < ::Minitest::Test
  def test_default
    assert(word_pattern('abba', 'dog cat cat dog'))
    assert(!word_pattern('abba', 'dog cat cat fish'))
    assert(!word_pattern('aaaa', 'dog cat cat dog'))
  end

  def test_additional
    assert(!word_pattern('abba', 'dog dog dog dog'))
  end
end
