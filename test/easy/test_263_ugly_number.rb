# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/263_ugly_number'
require 'minitest/autorun'

class UglyNumberTest < ::Minitest::Test
  def test_default_one = assert(is_ugly(6))

  def test_default_two = assert(is_ugly(1))

  def test_default_three = assert(!is_ugly(14))
end
