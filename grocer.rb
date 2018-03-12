require 'pry'

def consolidate_cart(cart)
new_cart = {}

  cart.each do |item|
    item_name = item.keys[0]
    new_cart[item_name] = item.values
end

  new_cart.each do |product|
    binding.pry
    new_cart[item_name].merge(:count => 0)
    binding.pry
    if new_cart[item_name]
      new_cart[item_name][:count] += 1

      end
    consolidated_cart
  end


def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
