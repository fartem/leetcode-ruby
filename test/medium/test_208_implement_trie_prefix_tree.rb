# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/208_implement_trie_prefix_tree'
require 'minitest/autorun'

class CountPrimesTest < ::Minitest::Test
  def test_default_one
    trie = ::Trie.new

    trie.insert('apple')
    assert(trie.search('apple'))
    assert(!trie.search('app'))
    assert(trie.starts_with('app'))

    trie.insert('app')
    assert(trie.search('app'))
  end
end
