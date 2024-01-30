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
    email.each_char do |c|
      next unless c != '.' || domain

      case c
      when '+'
        ignore = true
      when '@'
        ignore = false
        domain = true
      end

      parsed << c unless ignore && !domain
    end

    uniq.add(parsed.join)
  end

  uniq.length
end
