# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/796_rotate_string'
require 'minitest/autorun'

class RotateStringTest < ::Minitest::Test
  def test_default_one = assert(rotate_string('abcde', 'cdeab'))

  def test_default_two = assert(!rotate_string('abcde', 'abced'))
end
