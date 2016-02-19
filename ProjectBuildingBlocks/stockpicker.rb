def stock_picker(prices)

	best_buy = nil
	best_sell = nil
	max_profit = 0

	(0..(prices.length - 2)).each do |buy_date|

		(buy_date..(prices.length - 1)).each do |sell_date|
			profit = prices[sell_date] - prices[buy_date]
			if profit > max_profit
				best_buy = buy_date
				best_sell = sell_date
				max_profit = profit
			end
		end
	end
	puts "[#{best_buy}, #{best_sell}]"
end






stock_picker([17,3,6,9,15,8,6,1,10])
