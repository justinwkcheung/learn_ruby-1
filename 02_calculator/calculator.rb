def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(arr)
  sum = 0
  arr.each do |num|
    sum += num
  end
  return sum
end

def multiply(nums)
  product = 1
  nums.each do |num|
    product *= num
  end
  return product
end

def power(x, y)
  x**y
end

def factorial(num)
  product = num
  current_factor = num - 1
  if num == 0 || num == 1
    return 1
  else
    while current_factor >= 1
      product *= current_factor
      current_factor -= 1 
    end
  end
  return product
end
