# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/859_buddy_strings'
require 'minitest/autorun'

class BuddyStringsTest < ::Minitest::Test
  def test_default
    assert(buddy_strings('ab', 'ba'))
    assert(!buddy_strings('ab', 'ab'))
    assert(buddy_strings('aa', 'aa'))
  end

  def test_additional
    assert(!buddy_strings('abcd', 'badc'))
  end
end
