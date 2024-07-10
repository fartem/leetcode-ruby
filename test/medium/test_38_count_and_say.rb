# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/38_count_and_say'
require 'minitest/autorun'

class CountAndSayTest < ::Minitest::Test
  def test_default
    assert_equal('1211', count_and_say(4))
    assert_equal('1', count_and_say(1))
  end
end
