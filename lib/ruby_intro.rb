# frozen_string_literal: true

# Part 1

def sum(arr)
  return arr.inject(0, :+)
end

def max_2_sum(arr)
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else 
    arr_sorted = arr.sort.reverse
    return arr_sorted[0]+arr_sorted[1]
  end 
end

def sum_to_n?(arr, number)
  if arr.length < 2
    return false
  end
  for i in 0...arr.length-1
    for j in i+1...arr.length
      if arr[i]+arr[j] == number
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return 'Hello, ' + name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
