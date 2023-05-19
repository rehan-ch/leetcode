def is_palindrome(x)
    x = x.to_s
    x == x.reverse
end
puts is_palindrome(-101)