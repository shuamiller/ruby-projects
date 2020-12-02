def stock_picker (arr)
  profit_arr = []
  day_pair_arr = []

  low_sorted_arr = arr.sort
  high_sorted_arr = arr.sort.reverse

  for low_price in low_sorted_arr
    low_index = arr.index(low_price)
    for high_price in high_sorted_arr
      high_index = arr.index(high_price)
      if low_price < high_price
        if low_index < high_index
          day_pair_arr.push([low_index, high_index])
          profit_arr.push(high_price - low_price)
        end
      end
    end
  end

  sorted_profit_arr = profit_arr.sort.reverse
  highest_profit = sorted_profit_arr.first
  highest_profit_index = profit_arr.index(highest_profit)
  return day_pair_arr[highest_profit_index]

end

stock_picker [17,3,6,9,15,8,6,1,10]
