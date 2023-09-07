# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1309_decrypt_string_from_alphabet_to_integer_mapping'
require 'minitest/autorun'

class DecryptStringFromAlphabetToIntegerMappingTest < ::Minitest::Test
  def test_default
    assert_equal('jkab', freq_alphabets('10#11#12'))
    assert_equal('acz', freq_alphabets('1326#'))
  end
end
