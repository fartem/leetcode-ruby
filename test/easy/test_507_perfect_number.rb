# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/507_perfect_number'
require 'minitest/autorun'

class PerfectNumberTest < ::Minitest::Test
  def test_default
    assert(check_perfect_number(28))
    assert(!check_perfect_number(7))
  end
end
