def sum_to(n)
  return 1 if n == 1
  return nil if n <=0
  sum_to(n-1)+n
end

# Test Cases
sum_to(5)  # => returns 15
sum_to(1)  # => returns 1
sum_to(9)  # => returns 45
sum_to(-8)  # => returns nil

def add_numbers(arr)
  return arr[0] if arr.length <= 1
  arr[0] + add_numbers(arr[1..-1])
end

# Test Cases
add_numbers([1,2,3,4]) # => returns 10
add_numbers([3]) # => returns 3
add_numbers([-80,34,7]) # => returns -39
add_numbers([]) # => returns nil

def gamma_fnc(n)
  return 1 if n == 1
  return nil if n == 0
  (n-1) * (gamma_fnc(n-1))
end


# Test Cases
gamma_fnc(0)  # => returns nil
gamma_fnc(1)  # => returns 1
gamma_fnc(4)  # => returns 6
gamma_fnc(8)  # => returns 5040

def ice_cream_shop(flavors, favorite)
  return false if flavors == []
  return true if flavors[0] == favorite
  ice_cream_shop(flavors[1..-1], favorite)
end

  # Test Cases
#ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
#ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
#ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
#ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
#ice_cream_shop([], 'honey lavender')  # => returns false

def reverse(str)
  return "" if str == ""
  str[-1] + reverse(str[0..-2])
end

  # Test Cases
#reverse("house") # => "esuoh"
#reverse("dog") # => "god"
#reverse("atom") # => "mota"
#reverse("q") # => "q"
#reverse("id") # => "di"
#reverse("") # => ""
