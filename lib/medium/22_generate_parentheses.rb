# frozen_string_literal: true

# https://leetcode.com/problems/generate-parentheses/
# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  result = []
  result << '' if n.zero?
  (0...n).each do |i|
    generate_parenthesis(i).each do |left|
      generate_parenthesis(n - 1 - i).each do |right|
        result << "(#{left})#{right}"
      end
    end
  end

  result
end
