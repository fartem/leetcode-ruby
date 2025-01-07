# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/hard/126_word_ladder_ii'
require 'minitest/autorun'

class WordLadderIITest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        %w[hit hot lot log cog],
        %w[hit hot dot dog cog]
      ],
      find_ladders(
        'hit',
        'cog',
        %w[hot dot dog lot log cog]
      )
    )
  end

  def test_default_two
    assert_equal(
      [],
      find_ladders(
        'hit',
        'cog',
        %w[hot dot dog lot log]
      )
    )
  end
end
