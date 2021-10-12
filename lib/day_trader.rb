def day_trader(prices)
  biggest_deltas = []

  prices.each_index { |i| biggest_deltas[i] = get_best_delta(prices, i) }
  buy_index = biggest_deltas.index(biggest_deltas.max)  
  sell_index = get_best_delta_index(prices, buy_index) 
  return [buy_index, sell_index]
end

def get_best_delta(prices, start_index)
  diff = Array.new(9, -1000)
  for i in start_index..prices.length-1
    diff[i] = prices[i] - prices[start_index]
  end  
  best_sell_value = diff.max + prices[start_index]
  start_value = prices[start_index]
  delta = best_sell_value - start_value
  return delta
end

def get_best_delta_index(prices, start_index)
  diff = Array.new(9, -1000)
  for i in start_index..prices.length-1
    diff[i] = prices[i] - prices[start_index]
  end
  return diff.index(diff.max)
end



prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

puts "DayTRADER SAYS : #{day_trader(prices)}"