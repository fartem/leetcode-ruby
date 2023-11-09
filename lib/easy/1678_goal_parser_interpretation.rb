# frozen_string_literal: true

# https://leetcode.com/problems/goal-parser-interpretation/
# @param {String} command
# @return {String}
def interpret(command)
  result = []
  p = 0
  while p != command.length
    c = command[p]
    if c != '(' || p == command.length - 1
      result << c
    else
      nxt = command[p + 1]
      if nxt == ')'
        result << 'o'
        p += 1
      else
        result << 'al'
        p += 3
      end
    end

    p += 1
  end

  result.join
end
