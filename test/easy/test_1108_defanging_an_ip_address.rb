# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1108_defanging_an_ip_address'
require 'minitest/autorun'

class DefangingAnIPAddressTest < ::Minitest::Test
  def test_default
    # rubocop:disable Style/DisableCopsWithinSourceCodeDirective, Style/IpAddresses
    assert_equal('1[.]1[.]1[.]1', defang_i_paddr('1.1.1.1'))
    assert_equal('255[.]100[.]50[.]0', defang_i_paddr('255.100.50.0'))
    # rubocop:enable Style/DisableCopsWithinSourceCodeDirective, Style/IpAddresses
  end
end
