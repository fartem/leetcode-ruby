# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/205_isomorphic_strings'
require 'minitest/autorun'

class IsomorphicStringsTest < ::Minitest::Test
  def test_default
    assert(is_isomorphic('egg', 'add'))
    assert(!is_isomorphic('foo', 'bar'))
    assert(is_isomorphic('paper', 'title'))
  end
end
