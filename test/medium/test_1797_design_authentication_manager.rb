# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1797_design_authentication_manager'
require 'minitest/autorun'

class DesignAuthenticationManagerTest < ::Minitest::Test
  def test_default_one
    authentication_manager = ::AuthenticationManager.new(5)
    authentication_manager.renew('aaa', 1)
    authentication_manager.generate('aaa', 2)

    assert_equal(
      1,
      authentication_manager.count_unexpired_tokens(6)
    )

    authentication_manager.generate('bbb', 7)
    authentication_manager.renew('aaa', 8)
    authentication_manager.renew('bbb', 10)

    assert_equal(
      0,
      authentication_manager.count_unexpired_tokens(15)
    )
  end
end
