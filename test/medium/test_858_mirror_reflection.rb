# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/858_mirror_reflection'
require 'minitest/autorun'

class MirrorReflectionTest < ::Minitest::Test
  def test_default_one = assert_equal(2, mirror_reflection(2, 1))

  def test_default_two = assert_equal(1, mirror_reflection(3, 1))

  def test_additional_one = assert_equal(1, mirror_reflection(2, 2))
end
