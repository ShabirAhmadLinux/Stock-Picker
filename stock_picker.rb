def stock_picker(stocks)
days=Array.new(2,0)
max=0
min=0
max_profit=0
  for index in 0...stocks.length
  min = index if(stocks[min]>stocks[index])
  max =index if(stocks[max]<stocks[index])
  max=min if min>max
  profit=stocks[max]-stocks[min]
      if profit >max_profit
        days[0]=min
        days[1]=max
        max_profit=profit
      end
  end
  return days
end
#tests
p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([7, 1, 5, 3, 6, 4])
p stock_picker([7, 6, 4, 3, 1])
p stock_picker([2, 1, 2, 0, 1])