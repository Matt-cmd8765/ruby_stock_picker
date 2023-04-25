stock_prices = [17,3,6,9,15,8,6,1,10]

hash = {}

 stock_prices.each do |buy_price|
    the_buy_index = stock_prices.index(buy_price)    
     stock_prices.each.with_index(the_buy_index) do |sell_price, sell_idx|
        days_array = []
        buy_index = stock_prices.index(buy_price)
        days_array.push(buy_index)
        sell_index = stock_prices.index(sell_price)
        days_array.push(sell_index)
        result = sell_price - buy_price
        hash[days_array] = result
     end
end
p hash
