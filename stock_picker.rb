# Assignment:
#   Implement a method #stock_picker
#     that takes in an array of stock prices,
#       one for each hypothetical day.
#   It should return a pair of days
#     representing the best day to buy and the best day to sell.
#     Days start at 0.
# Example:
#   stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12
# Quick Tips:
#   You need to buy before you can sell
#   Pay attention to edge cases
#     like when the lowest day is the last day
#     or the highest day is the first day.
#
# Solution 1:
#   Iterate forward through the array:
#   For each possible buying day:
#     Find max possible selling day
#     Calculate the profit
#     Store those values in a hash (profit => [buying day, selling day])
#   Search the resulting array for the entry with the greatest max profit.
#   (If there are multiple results, use the first.)
#   Return the result as an array: [buying day, selling day]

def stock_picker(daily_prices)
  best_profit_per_buy_day = {}
  daily_prices.each_with_index do |price, buy_day|
    best_sell_day = daily_prices.index(daily_prices[buy_day..].max)
    best_profit = daily_prices[best_sell_day] - daily_prices[buy_day]
    best_profit_per_buy_day[best_profit] = [buy_day, best_sell_day]
  end
  max_profit = best_profit_per_buy_day.keys.max
  days_for_max_profit = best_profit_per_buy_day[max_profit]
  p "Returning buy & sell days for max profit of #{max_profit}..."
  days_for_max_profit
end

# Test
sample_daily_prices = [17,3,6,9,15,8,6,1,10]
p stock_picker(sample_daily_prices)
