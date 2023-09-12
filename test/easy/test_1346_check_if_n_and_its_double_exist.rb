# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1346_check_if_n_and_its_double_exist'
require 'minitest/autorun'

class CheckIfNAndItsDoubleExistTest < ::Minitest::Test
  def test_default
    assert(check_if_exist([10, 2, 5, 3]))
    assert(!check_if_exist([3, 1, 7, 11]))
  end
end
