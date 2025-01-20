# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/981_time_based_key_value_store'
require 'minitest/autorun'

class TimeBasedKeyValueStoreTest < ::Minitest::Test
  def test_default_one
    time_map = ::TimeMap.new

    time_map.set('foo', 'bar', 1)

    assert_equal('bar', time_map.get('foo', 1))
    assert_equal('bar', time_map.get('foo', 3))

    time_map.set('foo', 'bar2', 4)

    assert_equal('bar2', time_map.get('foo', 4))
    assert_equal('bar2', time_map.get('foo', 5))
  end

  def test_additional_one
    time_map = ::TimeMap.new

    time_map.set('love', 'high', 10)
    time_map.set('love', 'low', 20)

    assert_equal('', time_map.get('love', 5))
    assert_equal('high', time_map.get('love', 10))
    assert_equal('high', time_map.get('love', 15))
    assert_equal('low', time_map.get('love', 20))
    assert_equal('low', time_map.get('love', 25))
  end
end
