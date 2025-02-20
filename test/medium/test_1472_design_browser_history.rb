# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1472_design_browser_history'
require 'minitest/autorun'

class DesignBrowserHistoryTest < ::Minitest::Test
  def test_default_one
    browser_history = ::BrowserHistory.new('leetcode.com')

    browser_history.visit('google.com')
    browser_history.visit('twitter.com')
    browser_history.visit('youtube.com')

    assert_equal('twitter.com', browser_history.back(1))
    assert_equal('google.com', browser_history.back(1))
    assert_equal('twitter.com', browser_history.forward(1))

    browser_history.visit('linkedin.com')

    assert_equal('linkedin.com', browser_history.forward(2))
    assert_equal('google.com', browser_history.back(2))
    assert_equal('leetcode.com', browser_history.back(7))
  end
end
