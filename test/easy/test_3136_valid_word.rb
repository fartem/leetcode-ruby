# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/3136_valid_word'
require 'minitest/autorun'

class ValidWordTest < ::Minitest::Test
  def test_default_one
    assert(
      is_valid3136(
        '234Adas'
      )
    )
  end

  def test_default_two
    assert(
      !is_valid3136(
        'b3'
      )
    )
  end

  def test_default_three
    assert(
      !is_valid3136(
        'a3$e'
      )
    )
  end
end
