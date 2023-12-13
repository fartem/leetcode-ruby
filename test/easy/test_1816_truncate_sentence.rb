# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1816_truncate_sentence'
require 'minitest/autorun'

class TruncateSentenceTest < ::Minitest::Test
  def test_default
    assert_equal('Hello how are you', truncate_sentence('Hello how are you Contestant', 4))
    assert_equal('What is the solution', truncate_sentence('What is the solution to this problem', 4))
    assert_equal('chopper is not a tanuki', truncate_sentence('chopper is not a tanuki', 5))
  end
end
