DAY = 0

def stock_picker(stock_prices)
  pair_of_days_gains = Hash.new(0)

  # create hash with 
  # key: pair of days; value: net gains
  stock_prices.each_with_index do |buy_price, buy_day|
    days_held = 0
    stock_prices[buy_day+1..-1].each do |sell_price|
      days_held += 1
      pair_of_days_gains[[buy_day, buy_day + days_held]] = sell_price - buy_price
    end
  end

  get_profit_maximising_pair(pair_of_days_gains)[DAY]
end

def get_profit_maximising_pair(hash)
  hash.max_by{|k,v| v}
end

stock_picker([17,3,6,9,15,8,6,1,10])