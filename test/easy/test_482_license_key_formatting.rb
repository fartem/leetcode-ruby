# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/482_license_key_formatting'
require 'minitest/autorun'

class LicenseKeyFormattingTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      '5F3Z-2E9W',
      license_key_formatting(
        '5F3Z-2e-9-w',
        4
      )
    )
  end

  def test_default_two
    assert_equal(
      '2-5G-3J',
      license_key_formatting(
        '2-5g-3-J',
        2
      )
    )
  end
end
