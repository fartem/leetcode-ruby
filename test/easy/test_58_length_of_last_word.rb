# frozen_string_literal: true

require_relative '../../lib/easy/58_length_of_last_word'
require 'minitest/autorun'

class LengthOfLastWordTest < ::Minitest::Test
  def test_default
    assert_equal(5, length_of_last_word('Hello World'))
    assert_equal(4, length_of_last_word('   fly me   to   the moon  '))
    assert_equal(6, length_of_last_word('luffy is still joyboy'))
  end
end
