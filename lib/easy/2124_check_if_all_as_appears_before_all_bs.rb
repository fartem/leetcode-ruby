# frozen_string_literal: true

# https://leetcode.com/problems/check-if-all-as-appears-before-all-bs/
# @param {String} s
# @return {Boolean}
def check_string(s)
  !s.include?('ba')
end
