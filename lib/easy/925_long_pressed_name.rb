# frozen_string_literal: true

# https://leetcode.com/problems/long-pressed-name/
# @param {String} name
# @param {String} typed
# @return {Boolean}
def is_long_pressed_name(name, typed)
  n_p = 0
  t_p = 0
  n_l = name.length
  t_l = typed.length
  while n_p < n_l && t_p < t_l
    n = name[n_p]
    t = typed[t_p]
    if n == t
      n_p += 1
      t_p += 1
    elsif t_p >= 1 && t == typed[t_p - 1]
      t_p += 1
    else
      return false
    end
  end

  return false if n_p != n_l

  while t_p < t_l
    return false if typed[t_p] != typed[t_p - 1]

    t_p += 1
  end

  true
end
