# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/278_first_bad_version'
require 'minitest/autorun'

class FirstBadVersionTest < ::Minitest::Test
  def test_default
    $b_version = 4
    assert_equal(4, first_bad_version(5))

    $b_version = 1
    assert_equal(1, first_bad_version(1))
  end
end
