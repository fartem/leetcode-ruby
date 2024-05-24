# frozen_string_literal: true

# https://leetcode.com/problems/determine-if-two-events-have-conflict/
# @param {String[]} event1
# @param {String[]} event2
# @return {Boolean}
def have_conflict(event1, event2)
  [event1[0], event2[0]].max <= [event1[1], event2[1]].min
end
