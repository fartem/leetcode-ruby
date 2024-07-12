# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/43_multiply_strings'
require 'minitest/autorun'

class MultiplyStringsTest < ::Minitest::Test
  def test_default
    assert_equal('6', multiply('2', '3'))
    assert_equal('56088', multiply('123', '456'))
  end
end
