# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/645_set_mismatch'
require 'minitest/autorun'

class SetMismatchTest < ::Minitest::Test
  def test_default_one = assert_equal([2, 3], find_error_nums([1, 2, 2, 4]))

  def test_default_two = assert_equal([1, 2], find_error_nums([1, 1]))
end
