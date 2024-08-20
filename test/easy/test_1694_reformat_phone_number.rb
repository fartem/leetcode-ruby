# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1694_reformat_phone_number'
require 'minitest/autorun'

class ReformatPhoneNumberTest < ::Minitest::Test
  def test_default_one = assert_equal('123-456', reformat_number('1-23-45 6'))

  def test_default_two = assert_equal('123-45-67', reformat_number('123 4-567'))

  def test_default_three = assert_equal('123-456-78', reformat_number('123 4-5678'))
end
