# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/202_happy_number'
require 'minitest/autorun'

class HappyNumberTest < ::Minitest::Test
  def test_default_one = assert(is_happy(19))

  def test_default_two = assert(!is_happy(2))
end
