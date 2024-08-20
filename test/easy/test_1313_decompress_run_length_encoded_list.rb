# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1313_decompress_run_length_encoded_list'
require 'minitest/autorun'

class DecompressRunLengthEncodedListTest < ::Minitest::Test
  def test_default_one = assert_equal([2, 4, 4, 4], decompress_rl_elist([1, 2, 3, 4]))

  def test_default_two = assert_equal([1, 3, 3], decompress_rl_elist([1, 1, 2, 3]))
end
