# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/146_lru_cache'
require 'minitest/autorun'

class LRUCacheTest < ::Minitest::Test
  def test_default_one
    lru_cache = ::LRUCache.new(2)
    lru_cache.put(1, 1)
    lru_cache.put(2, 2)

    assert_equal(1, lru_cache.get(1))

    lru_cache.put(3, 3)

    assert_equal(-1, lru_cache.get(2))

    lru_cache.put(4, 4)

    assert_equal(-1, lru_cache.get(1))
    assert_equal(3, lru_cache.get(3))
    assert_equal(4, lru_cache.get(4))
  end

  def test_additional_one
    lru_cache = ::LRUCache.new(1)
    lru_cache.put(1, 1)

    assert_equal(1, lru_cache.get(1))

    lru_cache.put(1, 2)

    assert_equal(2, lru_cache.get(1))
  end
end
