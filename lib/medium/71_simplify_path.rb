# frozen_string_literal: true

# https://leetcode.com/problems/simplify-path/
# @param {String} path
# @return {String}
def simplify_path(path)
  stack = []
  s = path.split('/')

  s.each do |str|
    if str == '..'
      stack.pop unless stack.empty?
    elsif str != '.' && !str.empty? && str != '..'
      stack << "/#{str}"
    end
  end

  return '/' if stack.empty?

  stack.join
end
