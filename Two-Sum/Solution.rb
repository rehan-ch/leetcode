def two_sum(nums, target)
    complement_map = {}
    nums.each_with_index do |num, i|
        complement = target - num
        if complement_map.key?(complement)
            print [complement_map[complement], i]
            break
        end
        complement_map[num] = i
    end
    []
end

two_sum([3,2,4], 6)