# frozen_string_literal: true

require_relative '../../lib/easy/202_happy_number'
require 'minitest/autorun'

class HappyNumberTest < ::Minitest::Test
  def test_default
    assert(is_happy(19))
    assert(!is_happy(2))
  end
end
