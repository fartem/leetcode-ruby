# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/392_is_subsequence'
require 'minitest/autorun'

class IsSubsequenceTest < ::Minitest::Test
  def test_default_one
    assert(
      is_subsequence(
        'abc',
        'ahbgdc'
      )
    )
  end

  def test_default_two
    assert(
      !is_subsequence(
        'axc',
        'ahbgdc'
      )
    )
  end
end
