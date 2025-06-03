# frozen_string_literal: true

# https://leetcode.com/problems/number-of-senior-citizens/
# @param {String[]} details
# @return {Integer}
def count_seniors(details)
  details.count { |detail| detail[11..12] > '60' }
end
