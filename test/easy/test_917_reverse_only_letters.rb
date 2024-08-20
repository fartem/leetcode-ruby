# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/917_reverse_only_letters'
require 'minitest/autorun'

class ReverseOnlyLettersTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'dc-ba',
      reverse_only_letters(
        'ab-cd'
      )
    )
  end

  def test_default_two
    assert_equal(
      'j-Ih-gfE-dCba',
      reverse_only_letters(
        'a-bC-dEf-ghIj'
      )
    )
  end

  def test_default_three
    assert_equal(
      'Test1ng-Leet=code-Q!',
      reverse_only_letters(
        'Qedo1ct-eeLg=ntse-T!'
      )
    )
  end
end
