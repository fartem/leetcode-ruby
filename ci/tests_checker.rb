# frozen_string_literal: true

solutions = ::Dir.entries('./lib/easy').reject { |file_name| file_name.start_with?('.') }
solutions.each do |file_name|
  unless ::File.exist?("./test/easy/test_#{file_name}")
    puts file_name
    exit 1
  end
end
