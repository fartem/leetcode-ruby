# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/402_remove_k_digits'
require 'minitest/autorun'

class RemoveKDigitsTest < ::Minitest::Test
  def test_default_one = assert_equal('1219', remove_kdigits('1432219', 3))

  def test_default_two = assert_equal('200', remove_kdigits('10200', 1))

  def test_default_three = assert_equal('0', remove_kdigits('10', 2))

  def test_additional_one = assert_equal('11', remove_kdigits('112', 1))
end
