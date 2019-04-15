def stock_picker(inputArr)
@roi = []
@sellIndex = []
for i in 0...inputArr.length                        # loops through possibilities of buying on all days
    buy = inputArr[i]                               # if you were to buy on this day
    sell = inputArr[i..inputArr.length].max         # find the best day to sell after having bought on day 'i'
    @sellIndex[i] = inputArr.index(sell)            # stores the index of that day to sell
    @roi[i] = sell - buy                            # stores the return on investment, indexed to that buy day    
end
bestBuyIndex = @roi.index(@roi.max)                 # find the best of all calculated days to buy
bestSellIndex = @sellIndex[bestBuyIndex]            # best day to sell given that best day to buy
puts "bestBuyIndex: #{bestBuyIndex}"
puts "bestSellIndex: #{bestSellIndex}"
puts "roi: $#{@roi[bestBuyIndex]}"
result = [bestBuyIndex, bestSellIndex]
print result
end

stock_picker([17,1,2,3,0])
