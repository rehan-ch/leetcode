def longest_common_prefix(strs)
    return "" if strs.empty?
  
    # Find the string with the minimum length in the array
    min_length = strs.min_by(&:length).length

    # Iterate through the characters of the minimum length string
    min_length.times do |i|
      char = strs[0][i]
      # Check if the character is common to all strings
      return strs[0][0...i] unless strs.all? { |str| str[i] == char }
    end
  
    # If all characters match, return the minimum length string
    strs[0][0...min_length]
  end