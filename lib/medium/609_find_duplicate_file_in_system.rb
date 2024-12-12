# frozen_string_literal: true

# https://leetcode.com/problems/find-duplicate-file-in-system/
# @param {String[]} paths
# @return {String[][]}
def find_duplicate_paths(paths)
  map = {}
  paths.each do |path|
    values = path.split
    (1...values.size).each do |i|
      name = values[i].split('(')
      name[1] = name[1].gsub(/\)/, '')
      arr = map.fetch(name[1], [])
      arr << "#{values[0]}/#{name[0]}"
      map[name[1]] = arr
    end
  end

  result = []
  map.each do |_, value|
    next unless value.size > 1

    result << value
  end

  result
end

# Map<String, List<String>> map = new HashMap<>();
# for (String path : paths) {
#     String[] values = path.split(" ");
#     for (int i = 1; i < values.length; i++) {
#         String[] name = values[i].split("\\(");
#         name[1] = name[1].replace(")", "");
#         List<String> list = map.getOrDefault(name[1], new ArrayList<>());
#         list.add(values[0] + "/" + name[0]);
#         map.put(name[1], list);
#     }
# }
# List<List<String>> result = new ArrayList<>();
# for (String key : map.keySet()) {
#     if (map.get(key).size() > 1) {
#         result.add(map.get(key));
#     }
# }
# return result;
