# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1832_check_if_the_sentence_is_pangram'
require 'minitest/autorun'

class CheckIfTheSentenceIsPangramTest < ::Minitest::Test
  def test_default_one
    assert(
      check_if_pangram(
        'thequickbrownfoxjumpsoverthelazydog'
      )
    )
  end

  def test_default_two = assert(!check_if_pangram('leetcode'))
end
