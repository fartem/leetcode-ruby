# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/263_ugly_number'
require 'minitest/autorun'

class UglyNumberTest < ::Minitest::Test
  def test_default
    assert(is_ugly(6))
    assert(is_ugly(1))
    assert(!is_ugly(14))
  end
end
