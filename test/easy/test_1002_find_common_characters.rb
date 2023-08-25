# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1002_find_common_characters'
require 'minitest/autorun'

class FindCommonCharactersTest < ::Minitest::Test
  def test_default
    assert_equal(%w[e l l], common_chars(%w[bella label roller]))
    assert_equal(%w[c o], common_chars(%w[cool lock cook]))
  end
end
