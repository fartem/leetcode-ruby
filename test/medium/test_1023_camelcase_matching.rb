# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1023_camelcase_matching'
require 'minitest/autorun'

class CamelcaseMatchingTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        true,
        false,
        true,
        true,
        false
      ],
      camel_match(
        %w[
          FooBar
          FooBarTest
          FootBall
          FrameBuffer
          ForceFeedBack
        ],
        'FB'
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        true,
        false,
        true,
        false,
        false
      ],
      camel_match(
        %w[
          FooBar
          FooBarTest
          FootBall
          FrameBuffer
          ForceFeedBack
        ],
        'FoBa'
      )
    )
  end

  def test_default_three
    assert_equal(
      [
        false,
        true,
        false,
        false,
        false
      ],
      camel_match(
        %w[
          FooBar
          FooBarTest
          FootBall
          FrameBuffer
          ForceFeedBack
        ],
        'FoBaT'
      )
    )
  end
end
