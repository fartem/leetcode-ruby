# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/58_length_of_last_word'
require 'minitest/autorun'

class LengthOfLastWordTest < ::Minitest::Test
  def test_default_one = assert_equal(5, length_of_last_word('Hello World'))

  def test_default_two = assert_equal(4, length_of_last_word('   fly me   to   the moon  '))

  def test_default_three = assert_equal(6, length_of_last_word('luffy is still joyboy'))
end
