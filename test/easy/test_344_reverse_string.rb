# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/344_reverse_string'
require 'minitest/autorun'

class ReverseStringTest < ::Minitest::Test
  def test_default
    arr = %w[h e l l o]
    reverse_string(arr)
    assert_equal(%w[o l l e h], arr)

    arr = %w[H a n n a h]
    reverse_string(arr)
    assert_equal(%w[h a n n a H], arr)
  end
end
