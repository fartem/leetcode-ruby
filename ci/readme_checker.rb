# frozen_string_literal: true

# @param {String} difficulty
def process(difficulty)
  path = "./lib/#{difficulty}"
  solutions = ::Dir.entries(path).reject { |file_name| file_name.start_with?('.') }
  readme = ::File.readlines('./README.md')

  solutions.each do |file_name|
    links_count = 0
    readme.each do |line|
      links_count += 1 if line.include?(file_name)
    end

    if links_count != 1
      puts(file_name)
      exit(1)
    end
  end
end

process('easy')
