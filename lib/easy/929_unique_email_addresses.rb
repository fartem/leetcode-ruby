# frozen_string_literal: true

# https://leetcode.com/problems/unique-email-addresses/
# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
  uniq = ::Set.new
  emails.each do |email|
    parsed = []
    ignore = false
    domain = false
    (0...email.length).step(1) do |i|
      c = email[i]
      if c != '.' || domain
        case c
        when '+'
          ignore = true
        when '@'
          ignore = false
          domain = true
        end

        parsed << c unless ignore && !domain
      end
    end

    uniq.add(parsed.join)
  end

  uniq.length
end
