# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/14_longest_common_prefix'
require 'minitest/autorun'

class LongestCommonPrefixTest < ::Minitest::Test
  def test_default
    assert('fl', longest_common_prefix(%w[flower flow flight]))
    assert(longest_common_prefix(%w[dog racecar car]).empty?)
  end
end
