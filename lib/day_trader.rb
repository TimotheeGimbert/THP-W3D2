def day_trader(prices)
  deltas = []
  prices.each_index { |i| deltas[i] = best_delta(prices, i) }

  buy_spot = deltas.index(deltas.max)  
  sell_spot = best_diff_index(prices, buy_spot)

  return [buy_spot, sell_spot]
end

def best_delta(prices, start)
  diff = create_diff_array(prices, start)

  best_sell_value = diff.max + prices[start]
  start_value = prices[start]
  delta = best_sell_value - start_value

  return delta
end

def best_diff_index(prices, start)
  diff = create_diff_array(prices, start)
  return diff.index(diff.max)
end

def create_diff_array(array, start)
  diff = Array.new(9, -1000)
  for i in start..array.length-1
    diff[i] = array[i] - array[start]
  end
  return diff 
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

puts "DayTRADER SAYS : #{day_trader(prices)}"