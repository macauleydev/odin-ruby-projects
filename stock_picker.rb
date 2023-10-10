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

# Compare with solution from https://github.com/Kropyls/Stock-Picker :
# def stock_picker(prices)
#   results = prices.each_with_index.to_a.combination(2).max_by{|buy,sell| sell[0]-buy[0]}.map{|price, i| i}
# end
