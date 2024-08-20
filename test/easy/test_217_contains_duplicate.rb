# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/217_contains_duplicate'
require 'minitest/autorun'

class ContainsDuplicateTest < ::Minitest::Test
  def test_default_one = assert(contains_duplicate([1, 2, 3, 1]))

  def test_default_two = assert(!contains_duplicate([1, 2, 3, 4]))

  def test_default_three = assert(contains_duplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]))
end
