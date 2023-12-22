# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1859_sorting_the_sentence'
require 'minitest/autorun'

class SortingTheSentenceTest < ::Minitest::Test
  def test_default
    assert_equal('This is a sentence', sort_sentence('is2 sentence4 This1 a3'))
    assert_equal('Me Myself and I', sort_sentence('Myself2 Me1 I4 and3'))
  end
end
