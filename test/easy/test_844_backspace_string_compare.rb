# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/844_backspace_string_compare'
require 'minitest/autorun'

class BackspaceStringCompareTest < ::Minitest::Test
  def test_default
    assert(backspace_compare('ab#c', 'ad#c'))
    assert(backspace_compare('ab##', 'c#d#'))
    assert(!backspace_compare('a#c', 'b'))
  end
end
