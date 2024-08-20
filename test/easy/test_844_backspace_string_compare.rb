# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/844_backspace_string_compare'
require 'minitest/autorun'

class BackspaceStringCompareTest < ::Minitest::Test
  def test_default_one = assert(backspace_compare('ab#c', 'ad#c'))

  def test_default_two = assert(backspace_compare('ab##', 'c#d#'))

  def test_default_three = assert(!backspace_compare('a#c', 'b'))
end
