require_relative '../../lib/easy/14_longest_common_prefix'
require 'minitest/autorun'

class LongestCommonPrefixTest < Minitest::Test
  def test_default
    assert longest_common_prefix(%w[flower flow flight]) == 'fl'
    assert longest_common_prefix(%w[dog racecar car]).empty?
  end
end
