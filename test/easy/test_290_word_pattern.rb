# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/290_word_pattern'
require 'minitest/autorun'

class WordPatternTest < ::Minitest::Test
  def test_default_one = assert(word_pattern('abba', 'dog cat cat dog'))

  def test_default_two = assert(!word_pattern('abba', 'dog cat cat fish'))

  def test_default_three = assert(!word_pattern('aaaa', 'dog cat cat dog'))

  def test_additional_one = assert(!word_pattern('abba', 'dog dog dog dog'))
end
