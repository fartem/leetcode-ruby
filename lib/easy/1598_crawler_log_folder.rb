# frozen_string_literal: true

# https://leetcode.com/problems/crawler-log-folder/
# @param {String[]} logs
# @return {Integer}
def _1598_min_operations(logs)
  stack = []
  logs.each do |log|
    if log == '../'
      stack.pop unless stack.empty?
    elsif log != './'
      stack.push(log)
    end
  end

  stack.length
end
