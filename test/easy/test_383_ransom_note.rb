# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/383_ransom_note'
require 'minitest/autorun'

class RansomNoteTest < ::Minitest::Test
  def test_default
    assert(!can_construct('a', 'b'))
    assert(!can_construct('aa', 'ab'))
    assert(can_construct('aa', 'aab'))
  end
end
