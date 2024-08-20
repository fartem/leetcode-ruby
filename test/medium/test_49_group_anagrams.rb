# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/49_group_anagrams'
require 'minitest/autorun'

class GroupAnagramsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        %w[eat tea ate],
        %w[tan nat],
        ['bat']
      ],
      group_anagrams(
        %w[eat tea tan ate nat bat]
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        ['']
      ],
      group_anagrams(
        ['']
      )
    )
  end

  def test_default_three
    assert_equal(
      [
        ['a']
      ],
      group_anagrams(
        ['a']
      )
    )
  end
end
