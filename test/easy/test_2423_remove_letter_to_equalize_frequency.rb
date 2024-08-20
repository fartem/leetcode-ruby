# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2423_remove_letter_to_equalize_frequency'
require 'minitest/autorun'

class RemoveLetterToEqualizeFrequencyTest < ::Minitest::Test
  def test_default_one = assert(equal_frequency('abcc'))

  def test_default_two = assert(!equal_frequency('aazz'))
end
