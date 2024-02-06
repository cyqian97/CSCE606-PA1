# frozen_string_literal: true

# Part 1

def sum(arr)
  arr.inject(0, :+)
end

def max_2_sum(arr)
  if arr.empty?
    0
  elsif arr.length == 1
    arr[0]
  else
    arr_sorted = arr.sort.reverse
    arr_sorted[0] + arr_sorted[1]
  end
end

def sum_to_n?(arr, number)
  return false if arr.length < 2

  (0...arr.length - 1).each do |i|
    (i + 1...arr.length).each do |j|
      return true if arr[i] + arr[j] == number
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  string.match?(/^[bcdfghjklmnpqrstvwxyz]/i)
end

def binary_multiple_of_4?(string)
  if string.match?(/\A[01]+\z/)
    if string == '0'
      return true
    elsif (string.length > 1) && string.end_with?('00')
      return true
    end
  end
  false
end

# Part 3

# Object representing a book
class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'Invalid ISBN' if isbn.empty?
    raise ArgumentError, 'Price must be positive' unless price.positive?

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", price)
  end
end
