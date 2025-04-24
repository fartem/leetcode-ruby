# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/3210_find_the_encrypted_string'
require 'minitest/autorun'

class FindTheEncryptedStringTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'tdar',
      get_encrypted_string(
        'dart',
        3
      )
    )
  end

  def test_default_two
    assert_equal(
      'aaa',
      get_encrypted_string(
        'aaa',
        1
      )
    )
  end
end
