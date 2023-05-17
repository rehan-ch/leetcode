def roman_to_int(s)
  rom_hash = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000 }
  sequence_hash = {'I': 1, 'V': 2, 'X': 3, 'L': 4, 'C': 5, 'D': 6, 'M': 7 }
  str = s.split('')
  count = str.length-1
  result = 0
  while count >= 0
    if (count != 0) && (sequence_hash[str[count].to_sym] > sequence_hash[str[count-1].to_sym])
      result += rom_hash[str[count].to_sym] - rom_hash[str[count-1].to_sym]
      count -= 2
    else
      result += rom_hash[str[count].to_sym]
      count -= 1
    end
  end
  result
end