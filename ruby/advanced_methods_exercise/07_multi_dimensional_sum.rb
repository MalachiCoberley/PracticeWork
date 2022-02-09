# Write a method, multi_dimensional_sum(array), that accepts a multidimensional array as an arg 
# and returns the sum of all numbers in the array.

def multi_dimensional_sum(arrs)
  arrs.flatten.sum
end

arr_1 = [
    [4, 3, 1],
    [8, 1],
    [2]
]

p multi_dimensional_sum(arr_1)    # => 19

arr_2 = [
    [ [3, 6], [7] ],
    [ [5, 2], 1 ]
]

p multi_dimensional_sum(arr_2)    # => 24

def max_profit(prices)
  min_buy = prices.first
  best_profit = 0
  
  prices.each do |price|
    min_buy = [min_buy, price].min
    potential_profit = (price - min_buy)
    best_profit = [best_profit, potential_profit].max
  end

  best_profit
end
