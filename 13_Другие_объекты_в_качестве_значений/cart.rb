@cart = [
  { type: :soccer_ball, qty: 2 },
  { type: :tennis_ball, qty: 3 }
]
@inventory = {
  soccer_ball: { available: 2, price_per_item: 100 },
  tennis_ball: { available: 2, price_per_item: 30 },
  golf_ball: { available: 5, price_per_item: 5 }
}

def total_price
  total = 0
  @cart.each do |item|
    total = item[:qty] * @inventory[item[:type]][:price_per_item] + total
  end
  total
end

def is_available?
  @cart.each do |item|
    if item[:qty] <= @inventory[item[:type]][:available]
      next
    else
      return false
    end
  end
  true
end
p total_price
p is_available?
