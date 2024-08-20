# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/859_buddy_strings'
require 'minitest/autorun'

class BuddyStringsTest < ::Minitest::Test
  def test_default_one = assert(buddy_strings('ab', 'ba'))

  def test_default_two = assert(!buddy_strings('ab', 'ab'))

  def test_default_three = assert(buddy_strings('aa', 'aa'))

  def test_additional_one = assert(!buddy_strings('abcd', 'badc'))
end
