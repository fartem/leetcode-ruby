# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/383_ransom_note'
require 'minitest/autorun'

class RansomNoteTest < ::Minitest::Test
  def test_default_one = assert(!can_construct('a', 'b'))

  def test_default_two = assert(!can_construct('aa', 'ab'))

  def test_default_three = assert(can_construct('aa', 'aab'))
end
