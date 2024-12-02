# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/468_validate_ip_address'
require 'minitest/autorun'

class ValidateIPAddressTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'IPv4',
      valid_ip_address(
        '172.16.254.1'
      )
    )
  end

  def test_default_two
    assert_equal(
      'IPv6',
      valid_ip_address(
        '2001:0db8:85a3:0:0:8A2E:0370:7334'
      )
    )
  end

  def test_default_three
    assert_equal(
      'Neither',
      valid_ip_address(
        '256.256.256.256'
      )
    )
  end
end
