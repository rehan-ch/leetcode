def is_valid(s)
    bracket_hash = {'('=> ')', '{'=>'}', '['=> ']'}
    stack = []
    s.each_char do |c|
        if bracket_hash[c] != nil
            stack.push(c)
       else
            return false if bracket_hash[stack.pop()] != c
       end
    end
    stack.empty?
end