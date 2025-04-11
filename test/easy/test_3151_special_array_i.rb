# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/3151_special_array_i'
require 'minitest/autorun'

class SpecialArrayITest < ::Minitest::Test
  def test_default_one
    assert(
      is_array_special(
        [1]
      )
    )
  end

  def test_default_two
    assert(
      is_array_special(
        [2, 1, 4]
      )
    )
  end

  def test_default_three
    assert(
      !is_array_special(
        [4, 3, 1, 6]
      )
    )
  end
end
