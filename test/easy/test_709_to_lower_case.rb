# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/709_to_lower_case'
require 'minitest/autorun'

class ToLowerCaseTest < ::Minitest::Test
  def test_default
    assert_equal('hello', to_lower_case('Hello'))
    assert_equal('here', to_lower_case('here'))
    assert_equal('lovely', to_lower_case('LOVELY'))
  end
end
