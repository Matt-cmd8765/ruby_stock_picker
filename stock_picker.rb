stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker (array)
    #Empty hash to store buy / sell results
    hash = {}
    #Nested arrays, returning prices and indexes
    array.each_with_index { |buy_price, buy_index| 
        array.each_with_index { |sell_price, sell_index|
            #array stores the buy / sell dates to be stored as a key in the hash
            days_array = []
            #only add to array and hash if sell_index is greater or equal to buy index
            if sell_index >= buy_index
                days_array.push(buy_index)
                days_array.push(sell_index)
                result = sell_price - buy_price
                hash[days_array] = result
            end
        }
    }
    #return max value from the hash
    max_key = hash.max_by { |k,v| v}[0]
    p "Shoulda bought and sold on these days: #{max_key}"
end

stock_picker(stock_prices)