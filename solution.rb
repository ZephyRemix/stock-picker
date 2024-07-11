def stock_picker(stock_prices)
  max_profit = 0
  best_days = []

  stock_prices.each_with_index do |buy_price, buy_day|
    (buy_day+1...stock_prices.length).each do |sell_day|
      sell_price = stock_prices[sell_day]
      profit = sell_price - buy_price

      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end

  best_days
end

# Example usage:
prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
p stock_picker(prices)  # Output: [1, 4]