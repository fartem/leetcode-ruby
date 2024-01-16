# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1957_delete_characters_to_make_fancy_string'
require 'minitest/autorun'

class DeleteCharactersToMakeFancyStringTest < ::Minitest::Test
  def test_default
    assert_equal('leetcode', make_fancy_string('leeetcode'))
    assert_equal('aabaa', make_fancy_string('aaabaaaa'))
    assert_equal('aab', make_fancy_string('aab'))
  end
end
