def is_multiple_of_3_or_5?(current_number)
  current_number%3 == 0 || current_number%5 == 0 ? true : false
end

def sum_of_3_or_5_multiples(final_number)
  sum = 0
  for current_number in 1..final_number-1 do
    if is_multiple_of_3_or_5?(current_number) 
      sum += current_number
    end
  end
  return sum
end


