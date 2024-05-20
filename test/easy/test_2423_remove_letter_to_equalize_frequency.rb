# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2423_remove_letter_to_equalize_frequency'
require 'minitest/autorun'

class RemoveLetterToEqualizeFrequencyTest < ::Minitest::Test
  def test_default
    assert(equal_frequency('abcc'))
    assert(!equal_frequency('aazz'))
  end
end
