def stock_picker(prices)
    # initialize profit variable.
    profit = 0

    # initialize day array variable for buy and sell date index.
    day = [0,0]

    # iterate prices array with #each_with_index.
    # price1 is buy price and day1 is buy date index.
    prices.each_with_index do |price1, day1|

        # iterate over prices index where price2 is sell price and day2 is sell date index.
        prices.each_with_index do |price2, day2|
            # if array of sell date is earlier than buy date, move next along array.
            if day1 > day2  
                next
            end

            # if sell price - buy price > current profit
            if price2 - price1 > profit
                # calculate new profit and store it as profit
                profit = price2 - price1

                # store buy and sell dates in day array.
                day = [day1, day2]
            end
        end
    end
    # output the day combination of highest profit buy/sell pair indexes.
    p day
end # end stock_picker 


array = [17, 3, 6, 9, 15, 8, 5, 1, 10]

p stock_picker(array)