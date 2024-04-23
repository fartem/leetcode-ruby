# frozen_string_literal: true

# https://leetcode.com/problems/decode-the-message/
# @param {String} key
# @param {String} message
# @return {String}
def decode_message(key, message)
  message.tr(key.chars.uniq.join.gsub(/\s+/, ''), 'a-z')
end
