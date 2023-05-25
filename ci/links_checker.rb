# frozen_string_literal: true

solutions = ::Dir.entries('./lib/easy').reject { |file_name| file_name.start_with?('.') }
solutions.each do |file_name|
  lines = ::IO.readlines("./lib/easy/#{file_name}")
  has_comment = false
  (2...lines.length).each do |i|
    if lines[i].start_with?('# https://leetcode.com/')
      has_comment = true
      break
    end
  end

  unless has_comment
    puts file_name
    exit 1
  end
end
