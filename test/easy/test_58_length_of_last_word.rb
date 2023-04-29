require_relative '../../lib/easy/58_length_of_last_word'
require 'minitest/autorun'

class LengthOfLastWordTest < Minitest::Test
  def test_default
    assert length_of_last_word('Hello World') == 5
    assert length_of_last_word('   fly me   to   the moon  ') == 4
    assert length_of_last_word('luffy is still joyboy') == 6
  end
end

