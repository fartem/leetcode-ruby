# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/917_reverse_only_letters'
require 'minitest/autorun'

class ReverseOnlyLettersTest < ::Minitest::Test
  def test_default
    assert_equal('dc-ba', reverse_only_letters('ab-cd'))
    assert_equal('j-Ih-gfE-dCba', reverse_only_letters('a-bC-dEf-ghIj'))
    assert_equal('Test1ng-Leet=code-Q!', reverse_only_letters('Qedo1ct-eeLg=ntse-T!'))
  end
end
