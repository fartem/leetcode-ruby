# frozen_string_literal: true

# https://leetcode.com/problems/design-browser-history/
class BrowserHistory
  # @param {String} homepage
  def initialize(homepage)
    @history = [homepage]
    @current = 0
  end

  # @param {String} url
  # @return {Void}
  def visit(url)
    if @current < @history.size - 1
      size = @history.size - 1

      (@current...size).each { |_| @history.pop }
    end

    @history << url
    @current += 1
  end

  # @param {Integer} steps
  # @return {String}
  def back(steps)
    @current =
      if @current < steps
        0
      else
        @current - steps
      end

    @history[@current]
  end

  # @param {Integer} steps
  # @return {String}
  def forward(steps)
    @current =
      if @current + steps >= @history.size
        @history.size - 1
      else
        @current + steps
      end

    @history[@current]
  end
end
