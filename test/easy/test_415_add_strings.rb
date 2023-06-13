# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/415_add_strings'
require 'minitest/autorun'

class AddStringsTest < ::Minitest::Test
  def test_default
    assert_equal('134', add_strings('11', '123'))
    assert_equal('533', add_strings('456', '77'))
    assert_equal('0', add_strings('0', '0'))
  end
end
