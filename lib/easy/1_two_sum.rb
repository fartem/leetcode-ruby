# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  numbers = {}
  nums.each_with_index do |num, i|
    numbers.key?(num) ? numbers[num] << i : numbers[num] = [i]
  end

  nums.each_with_index do |num, i|
    diff = target - num
    has_pair = numbers.key?(diff)
    if has_pair
      uniq = numbers[diff].select { |index| index != i }
      return [i, uniq.first] unless uniq.empty?
    end
  end

  []
end
