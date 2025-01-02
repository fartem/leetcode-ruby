# frozen_string_literal: true

# https://leetcode.com/problems/keys-and-rooms/
# @param {Integer[][]} rooms
# @return {Boolean}
def can_visit_all_rooms(rooms)
  seen = ::Array.new(rooms.size, false)
  seen[0] = true
  stack = [0]

  until stack.empty?
    node = stack.delete_at(stack.size - 1)

    rooms[node].each do |nxt|
      next if seen[nxt]

      seen[nxt] = true
      stack << nxt
    end
  end

  !seen.include?(false)
end
