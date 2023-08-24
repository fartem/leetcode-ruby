# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/929_unique_email_addresses'
require 'minitest/autorun'

class UniqueEmailAddressesTest < ::Minitest::Test
  def test_default
    assert_equal(
      2,
      num_unique_emails(
        %w[test.email+alex@leetcode.com test.e.mail+bob.cathy@leetcode.com testemail+david@lee.tcode.com]
      )
    )
    assert_equal(
      3,
      num_unique_emails(
        %w[a@leetcode.com b@leetcode.com c@leetcode.com]
      )
    )
  end
end
