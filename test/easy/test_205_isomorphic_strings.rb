# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/205_isomorphic_strings'
require 'minitest/autorun'

class IsomorphicStringsTest < ::Minitest::Test
  def test_default_one = assert(is_isomorphic('egg', 'add'))

  def test_default_two = assert(!is_isomorphic('foo', 'bar'))

  def test_default_three = assert(is_isomorphic('paper', 'title'))
end
