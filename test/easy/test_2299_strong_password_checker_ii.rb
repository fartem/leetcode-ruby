# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2299_strong_password_checker_ii'
require 'minitest/autorun'

class StringPasswordCheckerIITest < ::Minitest::Test
  def test_default
    assert(strong_password_checker_ii('IloveLe3tcode!'))
    assert(!strong_password_checker_ii('Me+You--IsMyDream'))
    assert(!strong_password_checker_ii('1aB!'))
  end
end
